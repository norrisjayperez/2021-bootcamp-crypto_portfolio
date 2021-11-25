CoinMarketCap::Api.configure do |config|
    config.api_key = '0b700413-eaf2-405e-9619-dc6b302c06f5'
    config.user_agent = 'custom/user_agent' # Default: 'CoinMarketCap Ruby Client/1.0.0'
    config.user_agent = 'https://pro-api.coinmarketcap.com/v1' # Default: 'https://pro-api.coinmarketcap.com/v1'
end