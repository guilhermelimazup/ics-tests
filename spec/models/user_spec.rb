# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Create User' do
    it 'creates valid user' do
      user = build(:user, name: 'ics name', username: 'ics', email: 'ics@ics.com', password: 'icsics123')
      expect(user).to be_valid
    end

    it 'fails to create user with invalid email format' do
      user = build(:user, name: 'ics name', username: 'ics', email: 'ics_invalid', password: 'icsics123')
      expect(user).to_not be_valid
    end

    it 'fails to create user with short password' do
      user = build(:user, name: 'ics name', username: 'ics', email: 'ics@ics.com', password: '1234')
      expect(user).to_not be_valid
    end

    it 'fails to create user with same email as other user' do
      create(:user, name: 'ics name', username: 'ics', email: 'ics@ics.com', password: 'icsics123')
      user = build(:user, name: 'ics name2', username: 'ics2', email: 'ics@ics.com', password: 'icsics123')

      expect(user).to_not be_valid
    end

    it 'fails to create user with same username as other user' do
      create(:user, name: 'ics name', username: 'ics', email: 'ics@ics.com', password: 'icsics123')
      user = build(:user, name: 'ics name2', username: 'ics', email: 'ics2@ics.com', password: 'icsics123')

      expect(user).to_not be_valid
    end
  end
end
