module HashieModel
  module ArrayOf
    extend ActiveSupport::Concern
    
    module ClassMethods
      def array_of(klass)
        Class.new(Array) do
          define_method(:initialize) do |values|
            replace values.map { |value| klass.new(value) }
          end
        end
      end
    end
  end
end
