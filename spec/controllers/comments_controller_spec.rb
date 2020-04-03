require 'rails_helper'

describe CommentsController, type: :controller do

  describe '#index' do

    it "commetnsのindexが表示されるか" do
      get :index
      expect(response).to render_template :index
    end
    
  end
end