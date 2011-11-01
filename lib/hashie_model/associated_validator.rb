module HashieModel
  class AssociatedValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      return if (value.is_a?(Array) ? value : [value]).collect{ |r| r.nil? || r.valid? }.all?
      record.errors.add(attribute, :invalid, options.merge(:value => value))
    end
  end
end
