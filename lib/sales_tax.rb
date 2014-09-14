require 'yaml'

class SalesTax
  SALES_TAX_RATE = 0.1

  def initialize(product)
    @product = product
  end

  def amount
    return 0 if is_exempt?
    round @product.price_before_tax * SALES_TAX_RATE
  end

  private
  def is_exempt?
    exempt_products.any? {|exempt_product| @product.name.include?(exempt_product)}
  end

  def exempt_products
    YAML::load(File.open(sales_tax_exemptions_config_file).read)
  end

  def sales_tax_exemptions_config_file
    File.dirname(__FILE__) + '/config/sales_tax_exemptions.yml'
  end

  def round(amount)
    amount.round_to_nearest(0.05)
  end
end