require 'machinist'
require 'machinist/mongoid' # or mongoid
require 'sham'

puts Rails.env

Idea.blueprint do
  title { 'Some Idea' }
  votes_counter_cache { 0 }
end

User.blueprint do
  email
  password { 'password' }
  password_confirmation { 'password' }
end

User.blueprint(:active_user) do
  email { 'someone@lovesyou.com' }
  confirmed_at { Time.now }
end