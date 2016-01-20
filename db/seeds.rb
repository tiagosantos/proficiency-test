# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

StudentStatus.delete_all
StudentStatus.create! id: 1, name: "Ativo"
StudentStatus.create! id: 2, name: "Suspenso"

CourseStatus.delete_all
CourseStatus.create! id: 1, name: "Ativo"
CourseStatus.create! id: 2, name: "Suspenso"

