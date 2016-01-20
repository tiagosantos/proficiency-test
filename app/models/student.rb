class Student < ActiveRecord::Base

    validates :name, :status, :register_number,  presence: true
    has_one :class_room


    def self.search(query)
    	where("name like ?","%#{query}%")
    end
end
