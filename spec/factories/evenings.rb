FactoryGirl.define do
  factory :evening do
    address "MyString"
    city
    max_guests 1
    needs_survivor false
    private_free_text "MyText"
    public_free_text "MyText"
    open false
    date "2016-07-02"
    time "2016-07-02 10:53:31"
    organization_name "MyString"
    visible false
    floor 1
    elevator false
    language_id 1
    witness_id 1
    witness_assigned_at "2016-07-02 10:53:31"
    host_id 1
  end
end
