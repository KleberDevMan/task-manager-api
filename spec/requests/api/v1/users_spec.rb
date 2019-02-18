require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  # Variaveis
  let!(:user) {create(:user)}
  let!(:user_id) {user.id}

  #host da aplicacao
  before {host! 'api.taskmanager.test'}


  # request: Show
  describe 'GET /users/:id' do
    #Faz a requisicao
    before do
      headers = {'Accept' => 'application/vnd.taskmanager.v1'}
      get "/users/#{user_id}", params: {}, headers: headers
    end


    context 'quando o usuario existir no banco' do
      it 'retorna o usuario' do
        user_response = JSON.parse(response.body)
        expect(user_response['id']).to eq(user_id)
      end

      it 'retorna status code 200' do
        expect(response).to have_http_status(200)
      end
    end


    context 'quando o usuario não existir no banco' do
      let!(:user_id) {1000}

      it 'retorna status code 404' do
        expect(response).to have_http_status(404)
      end
    end

  end


end