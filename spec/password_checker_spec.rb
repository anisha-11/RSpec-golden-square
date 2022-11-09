require "password_checker"

RSpec.describe PasswordChecker do 
  it "returns true if password length is more than 8 characters" do
    password = PasswordChecker.new
    result = password.check("password")
    expect(result).to eq true
  end

  it "fails if password is less than 8 characters" do 
    password = PasswordChecker.new
    expect { password.check("pass") }.to raise_error "Invalid password, must be 8+ characters."
  end
end