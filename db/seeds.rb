# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Product.destroy_all

puts 'Creating products'
product1 = Product.create!(name: 'SPM-OH', description: 'Surface hydoxyl groups/Particle size [nm]: 50 ~ 500/ Negative surface charge at pH 7.0',
                           category: 'SPM-Bead', subCategory: 'Nanoparticles', photo: Rails.root.join("app/assets/images/product1.jpg").open)
product2 = Product.create!(name: '3DForCell', description: 'Surface amine groups/Particle size [nm]: 50 ~ 500/ Negative surface charge at pH 7.0',
                           category: 'Cell Culture', subCategory: 'Analytics', photo: Rails.root.join("app/assets/images/product3.jpg").open)
product3 = Product.create!(name: 'SPM-NH2', description: 'Surface amine groups/Particle size [nm]: 50 ~ 500/ Positive surface charge at pH 7.0',
                           category: 'SPM-Bead', subCategory: 'Nanoparticles', photo: Rails.root.join("app/assets/images/product2.jpg").open)
product4 = Product.create!(name: 'SPM-OH', description: 'Surface hydoxyl groups/Particle size [nm]: 50 ~ 500/ Negative surface charge at pH 7.0',
                           category: 'SPM-Bead', subCategory: 'Nanoparticles', photo: Rails.root.join("app/assets/images/product1.jpg").open)
product5 = Product.create!(name: 'SPM-NH2', description: 'Surface amine groups/Particle size [nm]: 50 ~ 500/ Positive surface charge at pH 7.0',
                           category: 'SPM-Bead', subCategory: 'Nanoparticles', photo: Rails.root.join("app/assets/images/product2.jpg").open)
product6 = Product.create!(name: '3DForCell', description: 'Surface amine groups/Particle size [nm]: 50 ~ 500/ Negative surface charge at pH 7.0',
                           category: 'Cell Culture', subCategory: 'Analytics', photo: Rails.root.join("app/assets/images/product3.jpg").open)
product7 = Product.create!(name: '3DForCell', description: 'Surface amine groups/Particle size [nm]: 50 ~ 500/ Negative surface charge at pH 7.0',
                           category: 'Cell Culture', subCategory: 'Analytics', photo: Rails.root.join("app/assets/images/product3.jpg").open)
product8 = Product.create!(name: 'SPM-OH', description: 'Surface hydoxyl groups/Particle size [nm]: 50 ~ 500/ Negative surface charge at pH 7.0',
                           category: 'SPM-Bead', subCategory: 'Nanoparticles', photo: Rails.root.join("app/assets/images/product1.jpg").open)
product9 = Product.create!(name: 'SPM-NH2', description: 'Surface amine groups/Particle size [nm]: 50 ~ 500/ Positive surface charge at pH 7.0',
                           category: 'SPM-Bead', subCategory: 'Nanoparticles', photo: Rails.root.join("app/assets/images/product2.jpg").open)



puts 'Creating Admin'

admin1= Admin.create!(email: "asma@email.com", password: "secret")
admin1= Admin.create!(email: "roa@email.com", password: "secret")

puts 'All done!'
