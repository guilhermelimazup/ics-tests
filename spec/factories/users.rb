FactoryBot.define do
  factory :user do
    name { 'ics name' }
    username { 'ics' }
    email { 'ics@ics.com' }
    password_digest { 'icsics123' }
  end
end
