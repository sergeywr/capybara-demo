class VALID_DATA
	
	@email 			= 	"wc3tester@gmail.com"
	@password 		= 	"tester1234"
	@first_name		=	"Automation"
	@middle_name	=	"Tester"
	@last_name		=	"Capybara"

	class << self
		attr_accessor	:email,
						:password,
						:first_name,
						:middle_name,
						:last_name
	end

end

class INVALID_DATA
	
	@email			=	"fake@mail.com"
	@password		= 	"fakepassword"
	@first_name		=	"Test1"
	@middle_name	=	"Test2"
	@last_name		=	"Test3"

	class << self
		attr_accessor	:email,
						:password,
						:first_name,
						:middle_name,
						:last_name
						
	end
end
