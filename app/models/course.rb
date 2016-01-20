class Course < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy
    validates :status, presence: true
    validates :name, :description, presence: true, length: { maximum: 45 }
end
