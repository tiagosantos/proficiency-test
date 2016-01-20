class Student < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy
    validates :name, :register_number, :status, presence: true
    
    def self.search(query)
    	where("name like ?","%#{query}%")
    end
end
