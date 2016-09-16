FactoryGirl.define do
  factory :witness do
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city_id 1
    witness_type "MyString"
    language_id 1
    email "MyString"
    phone "MyString"
    can_climb_stairs "MyString"
    special_needs "MyText"
    requires_seminar false
    concept_id 1
    free_text "MyText"
    is_of_special_population false
  end
end
