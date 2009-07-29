# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_loocrum_session',
  :secret      => '2416acd432cbfdc94bfcd4b083e56a78defa264b4ef9c2f9df69f7453d9551c6fc90cb7698df59923bad7d7fe6975d399909294fa7e04532ea2cdea84f32b1c3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
