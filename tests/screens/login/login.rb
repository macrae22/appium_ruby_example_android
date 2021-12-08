class Login

  def self.login_with_email_button
    $driver.find_element(:id, 'loginWithEmailButton')
  end
end