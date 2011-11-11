module HashieModel
  class Money < ::Money
    def self.coerce(value)
      cents = value.is_a?(::Money) ? value.cents : value.to_money(:USD).cents
      new(cents, :USD)
    end
    
    def as_json(options=nil)
      to_s
    end
  end
end
