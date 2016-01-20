class Course < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy
    validates :name, :description, :status, presence: true
end
