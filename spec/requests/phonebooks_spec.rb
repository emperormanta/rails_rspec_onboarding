require "rails_helper"

RSpec.describe "Phonebook Views", :type => :request do

  before(:each) do
    @user = create(:user)
    sign_in @user
  end

  it "Call index page" do
    get "/phonebooks/"
    expect(response).to have_http_status 200
  end

  it "Call new page" do
    get "/phonebooks/new"
    expect(response).to have_http_status 200
  end

  it "Call edit page" do
    phonebook = create(:phonebook)
    get "/phonebooks/#{phonebook.id}/edit"
    expect(response).to have_http_status 200
  end

  



end