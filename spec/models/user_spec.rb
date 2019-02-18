require 'rails_helper'

RSpec.describe User, type: :model do

  # before { @user = FactoryBot.build(:user) } # antes de executar o teste
  # it { expect(@user).to respond_to(:email) }
  # it { expect(@user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }

  #-----------------------------------------------------------------------------
  # subject { build(:user) }
  # it { expect(subject).to respond_to(:email) }
  # it { is_expected.to be_valid }

  #-----------------------------------------------------------------------------
  # let(:user) {build(:user)}
  # it {expect(user).to respond_to(:email)}

  # context 'quando o nome estiver em branco' do
  #   before {user.name = ""}
  #
  #   it {expect(user).not_to be_valid}
  # end
  #
  # context 'quando o nome estiver em branco' do
  #   before {user.name = nil}
  #
  #   it {expect(user).not_to be_valid}
  # end

  #-----------------------------------------------------------------------------
  # Shoulda Matchers

  it {is_expected.to validate_presence_of(:email)} # cria um objeto com o email nulo e tenta validar
  it {is_expected.to validate_uniqueness_of(:email).case_insensitive}
  it {is_expected.to validate_confirmation_of(:password)}
  it {is_expected.to allow_value('kleber@mail.com').for(:email)}

end
