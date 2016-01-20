class CourseStatus < ActiveRecord::Base
    validates :name, presence:  { message: " é obrigatório" }
end
