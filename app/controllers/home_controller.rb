class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=0b700413-eaf2-405e-9619-dc6b302c06f5&start=1&limit=5&convert=USD'
    #@url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?CMC_PRO_API_KEY=0b700413-eaf2-405e-9619-dc6b302c06f5&symbol=BTC,ETH'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)

    @list = @coins['data']


    @holdings = Coin.all

  end

  def about
  end
end
