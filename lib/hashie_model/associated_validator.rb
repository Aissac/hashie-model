module HashieModel
  class AssociatedValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      return if (value.is_a?(Array) ? value : [value]).collect{ |r| r.nil? || r.valid? }.all?
      errors = value.is_a?(Array) ? value.map(&:errors).first : value.errors
      record.errors.add(attribute, errors, options.merge(:value => value))
    end
  end
end
