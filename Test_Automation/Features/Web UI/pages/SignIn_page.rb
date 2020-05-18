class SignInPage
  attr_accessor :signInTab, :txtEmail, :txtPassword, :btnContinue, :btnSignIn
  att

  def initialize(browser)
    @browser = browser
    @signInTab = @browser.element(:id => "nav-link-accountList")
    @txtEmail = @browser.text_field(:id => "ap_email")
    @btnContinue = @browser.element(:id => "continue")
    @txtPassword = @browser.text_field(:id => "ap_password")
    @btnSignIn = @browser.element(:id => "signInSubmit")
  end

  def visit
    @browser.goto "https://www.amazon.com"
  end

  def clickSignInTab()
    @signInTab.click
  end

  def enteredEmail(email)
    @txtEmail.set email
  end

  def clickContinueBtn
    @btnContinue.click
  end

  def enteredPassword(password)
    @txtPassword.set password
  end

  def clickSignInBtn
    @btnSignIn.click
  end

  def VerifyHomePage()
    @browser.element(:span => "Hello, Yan").wait_until_present
  end
end