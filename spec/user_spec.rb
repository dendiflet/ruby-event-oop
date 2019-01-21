require_relative '../lib/user'

describe 'User' do

  before(:each) do
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end

	describe 'initializer' do
		it 'creates an user' do
			# créé un utilisateur
      user_0 = User.new("email@email.com")

      # petit test si l'utilisateur est bien créé
      expect(user.class).to eq(User)
		end

    it 'save name as instance variable' do
      user = User.new("email@mail.com", "maurice")
      expect(user.name).to eq("maurice")
    end
	end
end


#test du conpteur d'utilisateur
describe 'class methods' do

  describe 'self.user_counter' do
    it 'shows the number of users' do
      user_1 = User.new("email1@mail.com")
      user_2 = User.new("email2@mail.com")
      user_3 = User.new("email3@mail.com")
      expect(User.user_counter).to eq(4)
    end
  end
end