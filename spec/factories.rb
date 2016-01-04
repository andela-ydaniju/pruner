FactoryGirl.define do
  factory :link do
    name "MyString"
    user_id 1
  end

  factory :user do
    username "Kolapo"
    email "danijuyusuf@andela.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
