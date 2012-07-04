module HashieModel
  class Money < ::Money
    def self.coerce(value)
      currency = value.respond_to?(:currency) ? value.currency : 'USD'.to_currency
      cents    = value.respond_to?(:cents) ? value.cents : value.to_money(currency).cents
      new(cents, currency)
    end
    
    def as_json(options=nil)
      to_s
    end
  end
end
