require 'faker'
#require 'factory_bot_rails'
#include FactoryGirl::Syntax::Methods

# This file should contain all the record creation needed to seed the database
# with its default values.  The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# For the seeded attribute values, see factories.rb

puts
puts 'Seeding the database...'
puts

dev_tables_to_seed =
  %w(
    all_users
    two_clubs_with_teams_and_coaches_and_players
  )

production_tables_to_seed =
  %w(
    admin_user
  )

test_tables_to_seed = %w()

if ENV['TABLES'].present?
  # Allow overriding which tables we seed if the TABLES env var is present
  tables = ENV['TABLES'].to_s.split(',')
else
  # Load the tables specified based on the environment
  tables =
    case Rails.env
    when 'production'
      production_tables_to_seed
    when 'staging', 'development'
      dev_tables_to_seed
    when 'test'
      test_tables_to_seed
    else
      message = 'Error: Rails environment not found. Please check seeds.rb.'
      fail StandardError.new, message: message
    end
end

# raise StandardError.new, message: 'No Tables Specified' if tables.blank?

tables.each do |table_name|
  eval("Seeder.#{table_name}")
end
