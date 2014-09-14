FactoryGirl.define do
  factory :product do
    ignore do
      name 'test item name'
      price_before_tax 666.6
      imported false
    end

    initialize_with { new(name, price_before_tax, imported) }
  end
end