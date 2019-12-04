require 'rails_helper'
RSpec.describe Grade, type: :model do
    it "Validation does not pass if the course is empty" do
      user = Grade.new(course_id: '', user_id: 'Failure test', mark: '1234')
      expect(user).not_to be_valid
    end
    it "Validation does not pass if the user is empty" do
        user = Grade.new(course_id: 'Failure test', user_id: '', mark: '1234')
        expect(user).not_to be_valid
      end

      it "Validation does not pass if the mark is empty" do
        user = Grade.new(course_id: 'Failure test', user_id: '12', mark: '')
        expect(user).not_to be_valid
      end
end