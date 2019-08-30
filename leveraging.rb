require 'rspec'

location_query = ->(lat, long) do
  "#{lat}, #{long}"
end

time_query = -> do
  Time.now
end

def user_update name, set_location, pinged_at
  <<~EOL
    Name: #{name}
    Location: #{set_location}
    Time: #{pinged_at}
  EOL
end
