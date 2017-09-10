require 'rails_helper'
#functional tests	
describe StaticPagesController, type: :controller do 
	context 'GET #index' do
		it 'renders the index template' do
			get :index
			expect(response).to be_ok #checking response = 200 HTTP Status (ok)
			expect(response).to render_template('index') #checks rendering of template
		end 
	end	
end


