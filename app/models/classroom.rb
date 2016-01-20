class Classroom < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  validates :course_id, :student_id, presence: true

end
