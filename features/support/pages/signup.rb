
class Signup < SitePrism::Page

	set_url "/send/SignUp.aspx"

	element :first_name,		"#ContentPlaceHolder1_ContentPlaceHolder1_ctCustomerSenderEdit1_lblRemitente"
	element :middle_name,		"#ContentPlaceHolder1_ContentPlaceHolder1_ctCustomerSenderEdit1_txtCUR_MIDDLE_NAME"
	element :last_name,			"#ContentPlaceHolder1_ContentPlaceHolder1_ctCustomerSenderEdit1_lblRemitenteApellido"
	element :email,				"#ContentPlaceHolder1_ContentPlaceHolder1_ctCustomerSenderEdit1_lblEmailUser"
	element :password,			"#ContentPlaceHolder1_ContentPlaceHolder1_ctCustomerSenderEdit1_txtClave"
	element :confirm_password,	"#ContentPlaceHolder1_ContentPlaceHolder1_ctCustomerSenderEdit1_txtClave2"
	element :submit,			"#ContentPlaceHolder1_ContentPlaceHolder1_btnSalvar"
	
	elements :errors,	:xpath,	"//span[contains(@class, 'errormessages')]"
							
	def submit_invalid_reg_data

		self.first_name.set INVALID_DATA.first_name
		self.middle_name.set INVALID_DATA.middle_name
		self.last_name.set INVALID_DATA.last_name
		self.email.set INVALID_DATA.email
		self.password.set INVALID_DATA.password
		self.confirm_password.set INVALID_DATA.password
		self.submit.click	
	end

	def submit_valid_reg_data
		self.first_name.set VALID_DATA.first_name
		self.middle_name.set VALID_DATA.middle_name
		self.last_name.set VALID_DATA.last_name
		self.email.set VALID_DATA.email
		self.password.set VALID_DATA.password
		self.confirm_password.set VALID_DATA.password
		#self.submit.click NOT TO DO SIGN UP AND SPAM PROD :)
	end

end