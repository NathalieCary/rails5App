require 'rails_helper'

describe ProductsController, type: :controller do

### GET INDEX METHOD ###
	context 'GET #index' do
		it 'renders the index template' do
			get :index
			expect(response).to be_ok
			expect(response).to render_template('index')
		end
	end

### GET SHOW METHOD ###
	context 'GET #show' do
		it 'renders the show template' do
			@product = FactoryGirl.create(:product)
			get :show, params: {id: @product}
			expect(response).to be_ok
			expect(response).to render_template('show')
		end
	end

### GET NEW METHOD ###
	context 'GET #new' do
		it 'renders the new template' do
			get :new
			expect(response).to be_ok
			expect(response).to render_template('new')

		end
	end

### POST CREATE METHOD ###
	context 'POST #create' do
		before do
			@user = FactoryGirl.build(:user)
			sign_in @user
		end

		it 'creates a new product successfully' do
			@product = FactoryGirl.create(:product)
			expect(response).to be_successful
		end

		it 'missing new product name' do
			expect(Product.new(name:nil)).not_to be_valid
		end

		it 'missing new product description' do
			expect(Product.new(description:nil)).not_to be_valid
		end

		it 'missing new product price' do
			expect(Product.new(price:nil)).not_to be_valid
		end

	end

### PATCH UPDATE METHOD ###
	context 'patch #update' do
		before do
			@product = FactoryGirl.create(:product)
			@user = FactoryGirl.create(:user)
			sign_in @user
		end 

		it 'updates a product sucessfully' do
			@params = { name: "Classic Ring", image_url: "images.com", id: @product.id, price: @product.price }
			patch :update, params: { id: @product.id, product: @params }
			@product.reload
			expect(@product.name).to eq "Classic Ring"
		end	
	end	


### DELETE DESTROY METHOD ###
	context 'delete #destroy' do
		before do
			@product = FactoryGirl.create(:product)
			@user = FactoryGirl.create(:user)
			sign_in @user
		end

		it 'deletes a product successfully' do
			delete :destroy, params: {id: @product }
			expect(response).to redirect_to products_path
		end
	end

end


