FactoryBot.define do
  factory :university do
    web_page 'http://example.com'
    sequence(:name) { |n| "University ##{n}" }
    alpha_two_code 'AC'
    state 'state'
    domain 'domain.com'
    country 'Switzerland'
  end
end
