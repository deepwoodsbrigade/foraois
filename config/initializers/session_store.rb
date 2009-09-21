# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_deepwoodbrigade_session',
  :secret      => 'd65437bb07ed664931586db4672b0e128d246c5a1fd5e00bb86bd74854d673ee9fc397fc2f893af32b1adcdee7216de56c4d28a7e34dc9e44905bf8a3b259f9a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
