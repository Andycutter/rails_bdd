FactoryBot.define do
  factory :comment do
    email "email@comment.dk"
    content "A strong opinion"
    article nil
  end
end
