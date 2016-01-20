# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :classroom do
    entry_at "2016-01-20 15:12:55"
    course nil
    student nil
  end
end
