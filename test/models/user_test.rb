require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@subject = User.new
	end

	test "it validates email address" do
		@subject.valid?
		assert_includes(@subject.errors[:email], "can't be blank")
	end
	# should validate_presence_of(:email)

	test "the email provided is valid" do
		@subject.email = "muthomi"
		@subject.valid?
		assert_includes(@subject.errors[:email], "is invalid")
	end

end
