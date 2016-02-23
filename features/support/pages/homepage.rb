
class Homepage < SitePrism::Page

	set_url "/"

	element :privacy_policy, 		"#ft-navigation > ul:nth-child(3) > li:nth-child(2) > a"
	element :terms_and_conditons,	"#ft-navigation > ul:nth-child(3) > li:nth-child(1) > a"
	element :faq,					"#ft-navigation > ul:nth-child(2) > li:nth-child(1) > a"
	element :login,					"#main-header > nav > div > ul > li.login > a > strong"
	element :signup,				"#main-header > nav > div > ul > li.no-gap > a > strong"
	element :myaccount,				"#main-header > nav > div.user-menu > button"
	element :cookie_policy,			"#CookieReportsBanner > div > a.wscrOk"

	element :mob_HamburgerMenu,		"#main-header > nav > div > button"
	element :mob_login,				"#main-header > nav > div > ul > li.login > a"
	element :mob_myaccount,			"#main-header > nav > div.user-menu"

end