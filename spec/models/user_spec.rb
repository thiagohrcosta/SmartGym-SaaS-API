require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when user is super_admin' do
    it 'is valid without gym' do
      user = build(:super_admin, gym: nil)
      expect(user).to be_valid
    end
  end
end
