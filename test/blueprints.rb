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