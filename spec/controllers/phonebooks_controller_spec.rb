require 'rails_helper'
require 'faker'


RSpec.describe PhonebooksController, type: :controller do
    
    before(:each) do
        @user = create(:user)
        sign_in @user
        @phone = create(:phonebook)
    end

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

    describe "PUT 'update/:id'" do
        it "allows an phone to be updated" do
            put :update, xhr: true, params: { id: @phone.id , :phonebook => @phone.attributes = { :user_id => @phone.user_id, :name => "Home", :number => "0318281850" } }
        end
    end

    describe "DELETE 'phonebooks/:id'" do
        it "delete phonebook" do
            delete :destroy, xhr: false, params: { id: @phone.id }
        end
    end
    
end
