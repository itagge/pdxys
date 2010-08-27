# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yoga_session',
  :secret      => '148ec484b8abfaf319db323912defdcff8eeea4ff28a223ba7eefcc95a38fda202e5a206bba9f92be97b121d1969846df86393eb3f5a2d72d5430261d7ca786a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
