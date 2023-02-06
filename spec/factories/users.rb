FactoryBot.define do
  factory :user do
    id { 6 }
    email { 'notreinv@gmail.com' }
    password { 'invite123456' }
    password_confirmation { 'invite123456' }
    admin { false }
  end

  factory :user1 do
    id { 7 }
    email { 'notreinvi@gmail.com' }
    password { 'invite123456' }
    password_confirmation { 'invite123456' }
    admin { false }
  end
  factory :admin_user, class: User do
    id { 1 }
    email { 'admin1@gmail.com' }
    password { 'admin123456' }
    password_confirmation { 'admin123456' }
    admin { true }
  end
end
