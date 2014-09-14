FactoryGirl.define do
  factory :product do
    ignore do
      name 'test product name'
      price_before_tax 666.6
    end

    initialize_with { new(name, price_before_tax) }
  end
end