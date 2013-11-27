# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    content { Whitman::Sentence.sentences(2).join('.') }
    sequence(:created_at) { |n| Time.now + n.days }
  end
end
