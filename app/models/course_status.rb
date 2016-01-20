class CourseStatus < ActiveRecord::Base
    validates :name, presence: true, presence: true, length: { maximum: 45 }
end
