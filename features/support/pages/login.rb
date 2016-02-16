
class Login < SitePrism::Page

	set_url "/send/LoginPage.aspx"

	element :email,				"#email"
	element :password,			"#password"
	element	:login,				"#submit-login"
	element :error_login,		"#login-box > fieldset > ul > li:nth-child(3) > p"
	element :myaccount,			"#main-header > nav > div.user-menu > button > span"


	def submit_valid_login

		self.email.set VALID_DATA.email
		self.password.set VALID_DATA.password
		self.login.click
	end

	def submit_invalid_login

		self.email.set INVALID_DATA.email
		self.password.set INVALID_DATA.password
		self.login.click

	end
end