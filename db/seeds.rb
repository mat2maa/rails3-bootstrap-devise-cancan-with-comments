# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({:name => role}, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

UserProfile.create(
    user_id: user.id,
    address: ENV['ADMIN_ADDRESS'].dup,
    municipality: ENV['ADMIN_MUNICIPALITY'].dup,
    city: ENV['ADMIN_CITY'].dup,
    country: ENV['ADMIN_COUNTRY'].dup,
    post_code: ENV['ADMIN_POST_CODE'].dup,
    email: ENV['ADMIN_EMAIL'].dup,
    phone: ENV['ADMIN_PHONE'].dup,
    mobile: ENV['ADMIN_MOBILE'].dup
)
puts 'Added profile for user: ' << user.name