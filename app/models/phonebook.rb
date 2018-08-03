class Phonebook < ApplicationRecord
    # validates :user_id, presence: true
    #validates :name, presence: {message: "Name cannot be blank."}, on: create
    #validates :number, presence: true, numericality: { only_integer: true }, length: { minimum: 10 }

     #validates :name, :presence => {message: "Name cannot be blank."}, :on => :create
    #validates :number, :presence => {message: "Number content cannot be blank."}, :length => { :minimum => 2, message: "Number is too short."}, :on => :create
    
    validates :user_id, presence: true
    validates :name, presence: {message: "Name cannot be blank."}
    validates :number, presence: {message: "Number content cannot be blank."}, numericality: { only_integer: true , message: "Number must be integer."}, length: { minimum: 10 }

end
