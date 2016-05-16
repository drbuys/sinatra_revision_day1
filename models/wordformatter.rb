class WordFormatter

  attr_accessor :address

  def initialize(address)
    @address = address
  end

  def upcase_postcode
    # word = @address[:postcode]
    # @address[:postcode] = word.upcase
    @address[:postcode] = @address[:postcode].upcase
    return @address
  end

  def camelcase_address()
    #  word = @address[:building]
    #  @address[:building] = word.split(' ').collect(&:capitalize).join
    @address[:building] = @address[:building].split(' ').collect(&:capitalize).join
     return @address
  end

end
