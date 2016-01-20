class Course < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy 
    validates :status, presence:  { message: " é obrigatório" }
    validates :name, :description, presence:  { message: " é obrigatório" }, length: { maximum: 45 }
end
