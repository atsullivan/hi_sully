require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'sets the correct instance variables' do
      get :index
      expect(response).to render_template("index")
    end
  end
end
