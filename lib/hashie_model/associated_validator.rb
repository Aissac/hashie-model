module HashieModel
  class AssociatedValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      collection = value.is_a?(Array) ? value : [value]
      invalid_elements = collection.select { |e| e && !e.valid? }
      if invalid_elements.present?
        first_error = invalid_elements.first.errors
        record.errors.add(attribute, first_error, options.merge(value: value))
      end
    end
  end
end
