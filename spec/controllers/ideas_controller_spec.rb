require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe IdeasController, type: :controller do

    login_user

    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    let(:valid_attributes) {
        { :name => "Test title!", :description => "This is a test description" }
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Idea.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        end
    end

    describe 'GET /new ' do
      it 'responds with 200' do
        get :new
        expect(response).to have_http_status(200)
      end
    end


    describe 'GET /' do
      it 'responds with 200' do
        get :index
        expect(response).to have_http_status(200)
      end
    end
end
