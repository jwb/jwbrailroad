# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Bobber1_session',
  :secret      => '5aadb84a115d99d16287e00d2ae6ab4e13077115abe48dc9c0a2be35bfe52cf3609fab6d46825291e3f2ca822bd2896c54dc0a684df286bf1bdca6434561458c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
