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

Student.delete_all
Student.create! id: 1, name: "Carlos Tiago", register_number: "ABC1", status: 1
Student.create! id: 2, name: "Carlos", register_number: "ABC2", status: 2

Course.delete_all
Course.create! id: 1, name: "Web Design", description: "ABC1", status: 1
Course.create! id: 2, name: "Programação", description: "ABC2", status: 2

Classroom.delete_all
Classroom.create! id: 1, course_id: 1, student_id: 2, entry_at: Time.now 
Classroom.create! id: 2, course_id: 2, student_id: 2, entry_at: Time.now 