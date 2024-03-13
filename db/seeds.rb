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

Customer.create(name:'william', paymentmethod:'card', contactnum: 431-279-1234)
Customer.create(name:'hary', paymentmethod:'cash', contactnum: 204-179-1234)
Customer.create(name:'karan', paymentmethod:'card', contactnum: 445-890-4567)
Customer.create(name:'varun', paymentmethod:'cash', contactnum: 123-204-1456)

Employee.create(name:'Kartik', employeeid:1234, salary:1000)
Employee.create(name:'sam', employeeid:2345, salary:2000)
Employee.create(name:'hola', employeeid:5678, salary:800)
Employee.create(name:'krn', employeeid:4567, salary:1400)
