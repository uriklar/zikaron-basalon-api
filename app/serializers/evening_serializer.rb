class EveningSerializer < ActiveModel::Serializer
  attributes :id, :address, :city_id, :max_guests, :needs_survivor, :private_free_text, :public_free_text, :open, :date, :time, :organization_name, :visible, :floor, :elevator, :language_id, :witness_id, :witness_assigned_at
end
