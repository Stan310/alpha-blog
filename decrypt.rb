require 'active_support'
require 'active_support/encrypted_configuration'

config = ActiveSupport::EncryptedConfiguration.new(
  config_path: "config/credentials.yml.enc",
  key_path: "config/master.key",
  env_key: "RAILS_MASTER_KEY",
  raise_if_missing_key: true
)

puts config.read
