FactoryGirl.define do
  factory :item do
    ignore do
      name 'test item name'
      price 666.6
    end

    initialize_with { new(name, price) }
  end
end