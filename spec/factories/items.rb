FactoryGirl.define do
  factory :item do
    ignore do
      name 'test item name'
      price_before_tax 666.6
    end

    initialize_with { new(name, price_before_tax) }
  end
end