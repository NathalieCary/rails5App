require 'rails_helper'

describe RegistrationsController, type: :controller do
	context 'Get :new' do
		it 'should get registration form'do
			expect(response).to be_ok
		end
	end
end