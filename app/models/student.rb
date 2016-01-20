class Student < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy 
    validates :status, presence:  { message: " é obrigatório" }
    validates :name, :register_number, presence:  { message: " é obrigatório" }, length: { maximum: 45 }
    def self.search(query)
    	where("name like ?","%#{query}%")
    end
end
