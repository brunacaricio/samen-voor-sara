# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Request.create!(
  title: "Sara naar paardrijles brengen",
  date: Date.today + 1.day,
  start_time: "14:00",
  end_time: "16:00",
  location: "Overijse"
)

Request.create!(
  title: "Bij Sara thuis zijn",
  date: Date.today + 2.days,
  start_time: "18:00",
  end_time: "21:00"
)

Request.create!(
  title: "Naar dokter brengen",
  date: Date.today + 4.days,
  start_time: "09:00",
  end_time: "11:00"
)
