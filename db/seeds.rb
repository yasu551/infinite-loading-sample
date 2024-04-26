current_time = Time.current
300.times do |i|
  time = current_time + i.hours
  Log.create!(content: i.to_s, created_at: time, updated_at: time)
end
