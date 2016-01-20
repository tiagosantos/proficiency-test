class CourseStatus < ActiveRecord::Base
    validates :name, presence: true
end
