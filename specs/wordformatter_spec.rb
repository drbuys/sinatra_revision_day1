require('minitest/autorun')
require('minitest/rg')
require_relative('../models/wordformatter.rb')

class TestWordFormatter < MiniTest::Test

  def setup
    @address = WordFormatter.new(address = {
       address: '3 ARGYLE HOUSE',
       building: 'code base',
       postcode: 'e13 zqf',
       phone: '0131558030'
    })
  end

  def test_upcase_postcode()
    assert_equal('E13 ZQF', @address.upcase_postcode[:postcode])
  end

  def test_camelcase()
    assert_equal('CodeBase', @address.camelcase_address[:building])
  end

end
