DatabaseCleaner[:mongoid].strategy = :truncation
DatabaseCleaner[:mongoid].clean_with :truncation

RSpec.configure do |config|
  config.before do
    Client.create_indexes
    Doorkeeper::AccessGrant.create_indexes
    Doorkeeper::AccessToken.create_indexes
  end
end
