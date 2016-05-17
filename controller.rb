require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require('json')
require_relative('models/wordformatter.rb')


get '/' do
  erb :home
end

get '/address' do
  content_type( :json )

  full_address = {
     address: '3 ARGYLE HOUSE',
     building: 'CODEBASE',
     postcode: 'e13 zqf',
     phone: '0131558030'
  }

  address = WordFormatter.new(full_address).upcase_postcode

  return address.to_json

end

# get '/camelcase/:word' do
#   content_type( :json )
#
#   dave = params[:word].camelize
#
#   @camelcase = dave.to_json
#
#   erb :camelcase
#
# end

get '/camelcase/:word' do

  dave = params[:word].camelize

# get '/camelcase/zak_buys' do
#
#   dave = 'zak_buys'.camelize

  @camelcase = dave

  erb :camelcase

end
