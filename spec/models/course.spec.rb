require 'rails_helper'
RSpec.describe User, type: :model do
    it "Validation does not pass if the Course name is empty" do
      user = Course.new(course_name: '', course_code: 'Failure test', user_id: '1234')
      expect(user).not_to be_valid
    end
    it "Validation does not pass if the course code is empty" do
        user = Course.new(course_name: 'Failure test', course_code: '', user_id: '1234')
        expect(user).not_to be_valid
      end

    it "Validation does not pass if the course code is empty" do
       user = Course.new(course_name: 'Failure test', course_code: '123', user_id: '')
       expect(user).not_to be_valid
      end
end