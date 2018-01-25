# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Domain.delete_all
Phrase.delete_all
Tag.delete_all
User.delete_all
Institution.delete_all


uw = Institution.create(name: 'University of Washington', abbreviation: 'UW')

#fake institutions
for i in 1..80 do
  Institution.create(name: "Fake Uni#{i}", abbreviation: "FU#{i}")
end

uw.propose_domain 'uw.edu'
uw.propose_domain 'u.washington.edu'

dylan = User.create(
  username: 'doshea',
  email: 'doshea@uw.edu',
  password: 'qwer',
  password_confirmation: 'qwer',
  is_admin: true
  )

bob = User.create(
  username: 'boshea',
  email: 'boshea@uw.edu',
  password: 'qwer',
  password_confirmation: 'qwer',
  is_admin: false
  )

dylan = User.create(username: 'doshea', email: 'doshea@uw.edu', password: 'qwer', password_confirmation: 'qwer', is_admin: true )