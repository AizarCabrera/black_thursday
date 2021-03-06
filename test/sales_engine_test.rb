require_relative 'helper'

class SalesEngineTest < Minitest::Test

  def test_from_csv_intializes_se_with_merchants_items
    se = SalesEngine.from_csv({
    :merchants     => './test/fixtures/merchants_fixtures.csv',
    :items         => './test/fixtures/items_fixtures.csv',
    :invoices      => './test/fixtures/invoices_fixtures.csv',
    :invoice_items => './test/fixtures/invoice_items_fixtures.csv'
                              })
    assert_equal MerchantRepository, se.merchants.class
    assert_equal ItemRepository, se.items.class
    assert_equal InvoiceRepository, se.invoices.class
    assert_equal InvoiceItemRepository, se.invoice_items.class
  end

end
