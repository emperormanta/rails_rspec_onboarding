require 'rails_helper'
require 'faker'


RSpec.describe PhonebooksController, type: :controller do

    describe "method index" do
        
        it "Get user's role" do
            roles = User.roles
            expect(roles).not_to be_nil
        end

        it "Get All Phonebook Data" do
            phonebook = Phonebook.all
            expect(phonebook).to be_truthy
        end
    end

    describe "method new" do
        it "Call new method & Create Phonebook Object" do
            phonebook = Phonebook.new
            expect(phonebook).to be_truthy
        end
    end
end
