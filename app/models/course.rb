class Course < ActiveRecord::Base
	 validates :name, :status, :description,  presence: true
     has_one :class_room
end
