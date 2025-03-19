class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :business_id
end
