class Student < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy
    validates :status, presence: true
    validates :name, :register_number, presence: true, length: { maximum: 45 }
    def self.search(query)
    	where("name like ?","%#{query}%")
    end
end
