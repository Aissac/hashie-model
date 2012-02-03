module HashieModel
  class Base < Hashie2::Dash
    extend ActiveModel::Naming
    
    include Hashie2::Extensions::Coercion
    
    include ActiveModel::AttributeMethods
    include ActiveModel::Conversion
    include ActiveModel::Validations
    
    attribute_method_suffix '?', '_before_type_cast'
    
    class << self
      def prop(name, type = nil, options = {})
        if type.is_a?(Hash)
          options = type
          type    = nil
        end
        
        property(name, options)
        
        if type
          coerce_key(name.to_sym, type)
          coerce_key(name.to_s, type)
        end
        
        define_attribute_methods [name]
        alias_method :"#{name}_without_type_cast=", :"#{name}="
        
        define_method(:"#{name}=") do |value|
          attributes_before_type_cast[name.to_s] = value
          send(:"#{name}_without_type_cast=", value)
        end
      end
      
      def from_json(json)
        new(ActiveSupport::JSON.decode(json))
      end
      
      def validates_associated(*attr_names)
        validates_with HashieModel::AssociatedValidator, _merge_attributes(attr_names)
      end
    end
    
    def init_with(coder)
      coder.map.each do |k, v|
        self.send(:"#{k}=", v)
      end
    end
    
    def encode_with(coder)
      coder.represent_map(coder.tag, self)
    end
    
    def attributes_before_type_cast
      @attributes_before_type_cast ||= {}
    end
    
    def attributes
      {}.tap do |attrs|
        self.class.properties.each do |key|
          attrs[key] = self[key]
        end
      end
    end
    
    def persisted?
      false
    end
    
    protected
      def attribute?(key)
        self[key].present?
      end
      
      def reset_attribute(key)
        self[key] = self.class.defaults[key.to_sym]
      end
      
      def attribute_before_type_cast(key)
        attributes_before_type_cast[key.to_s]
      end
  end
end
