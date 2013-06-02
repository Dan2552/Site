# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    title "MyString"
    done false
    parent_task_id 1
    idea_id 1
  end
end
