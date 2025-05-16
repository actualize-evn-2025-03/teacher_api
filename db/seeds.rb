require 'ffaker'

10.times do
  teacher = Teacher.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, subject: FFaker::Skill.specialties)
end

puts "Seeded 10 teachers"
