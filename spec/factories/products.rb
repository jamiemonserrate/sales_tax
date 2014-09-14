FactoryGirl.define do
  factory :product, aliases: [:non_imported_product, :non_exempt_product] do
    ignore do
      name 'test product name'
      price_before_tax 666.6
    end

    initialize_with { new(name, price_before_tax) }
  end

  factory :imported_product, parent: :product do
    name 'imported product'
  end
end