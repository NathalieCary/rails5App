require 'rails_helper'

describe UsersController, type: :controller  do

  before do
  #@user = User.create!(first_name: 'peter', last_name: 'macbook', email:'peter@gmail.com', password: '1234567')
  #@user1 = User.create!(first_name: 'ian', last_name: 'air', email: 'ian@gmail.com', password: '5678900')
  @user = FactoryGirl.create(:user)
  @user2 = FactoryGirl.create(:user)
  end

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        it "loads correct user details" do
          expect(assigns(:user)).to eq @user
          expect(response.status).to eq(200)
        end
      end
    end      

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: {id: @user.id}
        expect(response).to redirect_to(root_path)
      end
    end

    context "cannot access second user show page" do
      it "redirects to root" do
        sign_in @user2
      end

      it "redirects to root_path" do
        get :show, params: {id: @user2.id}        
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end
  end

end
