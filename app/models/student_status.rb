class StudentStatus < ActiveRecord::Base
    validates :name, presence: { message: " é obrigatório" }
end
