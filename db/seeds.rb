# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.destroy_all
Contact.destroy_all

client_1 = Client.create!([{ full_name: 'CustomerX', email: "desenvolvimento@customerx.cx", phone:"045 999 595 342", register_date: Time.now}])

contact_1 = Contact.create!([{ client_id: Client.last.id , full_name: "Leonardo Superti", email: "leonardo.superti@customerx.cx", phone: "045 999 595 342"}])
contact_2 = Contact.create!([{ client_id: Client.last.id , full_name: "Ricardo Grassi", email: "ricardo.grassi@customerx.cx", phone: "031 3333 3333"}])
