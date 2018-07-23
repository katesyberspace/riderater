require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'passengers64'
}

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || options)