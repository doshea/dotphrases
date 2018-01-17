# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Domain.delete_all
User.delete_all
Institution.delete_all

uw = Institution.create(name: 'University of Washington', abbreviation: 'UW')
Institution.create(name: 'University of California Los Angeles', abbreviation: 'UCLA')
Institution.create(name: 'University of California Los Angeles1', abbreviation: 'UCLA1')
Institution.create(name: 'University of California Los Angeles2', abbreviation: 'UCLA2')
Institution.create(name: 'University of California Los Angeles3', abbreviation: 'UCLA3')
Institution.create(name: 'University of California Los Angeles4', abbreviation: 'UCLA4')
Institution.create(name: 'University of California Los Angeles5', abbreviation: 'UCLA5')
Institution.create(name: 'University of California Los Angeles6', abbreviation: 'UCLA6')
Institution.create(name: 'University of California Los Angeles7', abbreviation: 'UCLA7')
Institution.create(name: 'University of California Los Angeles8', abbreviation: 'UCLA8')
Institution.create(name: 'University of California Los Angeles9', abbreviation: 'UCLA9')
Institution.create(name: 'University of California Los Angeles10', abbreviation: 'UCLA10')
Institution.create(name: 'University of California Los Angeles11', abbreviation: 'UCLA11')
Institution.create(name: 'University2 of California Los Angeles', abbreviation: '2UCLA')
Institution.create(name: 'University2 of California Los Angeles1', abbreviation: '2UCLA1')
Institution.create(name: 'University2 of California Los Angeles2', abbreviation: '2UCLA2')
Institution.create(name: 'University2 of California Los Angeles3', abbreviation: '2UCLA3')
Institution.create(name: 'University2 of California Los Angeles4', abbreviation: '2UCLA4')
Institution.create(name: 'University2 of California Los Angeles5', abbreviation: '2UCLA5')
Institution.create(name: 'University2 of California Los Angeles6', abbreviation: '2UCLA6')
Institution.create(name: 'University2 of California Los Angeles7', abbreviation: '2UCLA7')
Institution.create(name: 'University2 of California Los Angeles8', abbreviation: '2UCLA8')
Institution.create(name: 'University2 of California Los Angeles9', abbreviation: '2UCLA9')
Institution.create(name: 'University2 of California Los Angeles10', abbreviation: '2UCLA10')
Institution.create(name: 'University2 of California Los Angeles11', abbreviation: '2UCLA11')
Institution.create(name: 'University3 of California Los Angeles', abbreviation: '3UCLA')
Institution.create(name: 'University3 of California Los Angeles1', abbreviation: '3UCLA1')
Institution.create(name: 'University3 of California Los Angeles3', abbreviation: '3UCLA2')
Institution.create(name: 'University3 of California Los Angeles3', abbreviation: '3UCLA3')
Institution.create(name: 'University3 of California Los Angeles4', abbreviation: '3UCLA4')
Institution.create(name: 'University3 of California Los Angeles5', abbreviation: '3UCLA5')
Institution.create(name: 'University3 of California Los Angeles6', abbreviation: '3UCLA6')
Institution.create(name: 'University3 of California Los Angeles7', abbreviation: '3UCLA7')
Institution.create(name: 'University3 of California Los Angeles8', abbreviation: '3UCLA8')
Institution.create(name: 'University3 of California Los Angeles9', abbreviation: '3UCLA9')
Institution.create(name: 'University3 of California Los Angeles10', abbreviation: '3UCLA10')
Institution.create(name: 'University3 of California Los Angeles11', abbreviation: '3UCLA11')

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