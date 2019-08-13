require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'GET /authors' do
    let!(:author) { create(:author, first_name: 'Jane') }

    before do
      get authors_path
    end

    it 'is sucessful' do
      expect(response).to have_http_status(200)
    end

    it 'returns a list of authors' do
      expect(response.body).to include 'Jane'
    end
  end

  describe 'PUT /author' do
    let!(:author) { create(:author, first_name: 'Jane') }

    it 'updates the first name' do
      put author_path(author), params: { author: { first_name: 'John' } }
      expect(author.reload.first_name).to eq 'John'
    end
  end

  describe 'DELETE /author' do
    let!(:author) { create(:author, first_name: 'Jane') }

    it 'deletes the author' do
      expect { delete author_path(author) }
        .to change { Author.count }.by(-1)
    end
  end
end
