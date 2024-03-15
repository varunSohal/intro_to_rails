# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Phone.create(modelname:'15 pro max', price:1750, IMEInumber: 3456789098543 )
Phone.create(modelname:'15 pro ', price:1450, IMEInumber: 5673842914991 )
Phone.create(modelname:'15 plus', price:1050, IMEInumber: 345678934553)
Phone.create(modelname:'15', price:850, IMEInumber: 346543211233)

require 'faker'

# Clear existing records
Phone.destroy_all

# Seed data
10.times do
  modelname = Faker::Device.model_name
  price = Faker::Commerce.price(range: 500..2000)
  imei_number = Faker::Number.unique.number(digits: 13)

  Phone.create!(
    modelname: modelname,
    price: price,
    IMEInumber: imei_number
  )
end

Customer.create(name:'william', paymentmethod:'card', contactnum: 431-279-1234)
Customer.create(name:'hary', paymentmethod:'cash', contactnum: 204-179-1234)
Customer.create(name:'karan', paymentmethod:'card', contactnum: 445-890-4567)
Customer.create(name:'varun', paymentmethod:'cash', contactnum: 123-204-1456)

require 'faker'

# Clear existing records
Customer.destroy_all

# Seed data
4.times do
  name = Faker::Name.first_name
  payment_method = ['card', 'cash'].sample
  contact_num = Faker::PhoneNumber.unique.phone_number

  Customer.create!(
    name: name,
    paymentmethod: payment_method,
    contactnum: contact_num
  )
end
Employee.create(name:'Kartik', employeeid:1234, salary:1000)
Employee.create(name:'sam', employeeid:2345, salary:2000)
Employee.create(name:'hola', employeeid:5678, salary:800)
Employee.create(name:'krn', employeeid:4567, salary:1400)
# db/seeds.rb

require 'faker'

# Clear existing records
Employee.destroy_all

# Seed data
Employee.create!(name: 'Kartik', employeeid: 1234, salary: 1000)
Employee.create!(name: 'Sam', employeeid: 2345, salary: 2000)
Employee.create!(name: 'Hola', employeeid: 5678, salary: 800)
Employee.create!(name: 'Krn', employeeid: 4567, salary: 1400)

uri = URI('https://jsonplaceholder.typicode.com/users')
response = Net::HTTP.get_response(uri)
users = JSON.parse(response.body)['data']

users.each do |row|
    Customer.create(
        name: row["name"],
        username: row["username"],
        address: row["address"],
        website: row["website"],
    )
end
