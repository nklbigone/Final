require 'rails_helper'
RSpec.describe User, type: :model do
    it "Validation does not pass if the first name is empty" do
      user = User.new(first_name: '', last_name: 'Failure test', national_id: '1234', address: 'kigali', level: '23', classes: 'classes', email: 'nklbigone@gmail.com')
      expect(user).not_to be_valid
    end
    it "Validation does not pass if last_name is empty" do
        user = User.new(first_name: 'last name', last_name: '', national_id: '1234', address: 'kigali', level: '23', classes: 'classes', email: 'nklbigone@gmail.com'  ) 
      expect(user).not_to be_valid
    end
    it "validation fails If text is not national id" do
        user = User.new(first_name: 'alexis', last_name: 'Failure test', national_id: '', address: 'kigali', level: '23', classes: 'classes', email: 'nklbigone@gmail.com' )
      expect(user).not_to be_valid
    end
    it "validation fails If text is not address " do
        user = User.new(first_name: 'nkl', last_name: 'Failure test', national_id: '', address: '', level: '23', classes: 'classes', email: 'nklbigone@gmail.com' )
      expect(user).not_to be_valid
    end
    it "validation fails If text is not  in level and text" do
        user = User.new(first_name: 'alexis', last_name: 'Failure test', national_id: '12', address: 'kigali', level: '', classes: 'classes', email: 'nklbigone@gmail.com' )
      expect(user).not_to be_valid
    end
    it "validation fails If text is not present clesse" do
        user = User.new(first_name: 'alexis', last_name: 'Failure test', national_id: '123', address: 'kigali', level: '23', classes: '', email: 'nklbigone@gmail.com')
      expect(user).not_to be_valid
    end
    it "validation fails If text is not email" do
        user = User.new(first_name: 'alexis', last_name: 'Failure test', national_id: '123', address: 'kigali', level: '23', classes: 'mml', email: 'nklbigone@gmail.com' )
      expect(user).not_to be_valid
    end

  end