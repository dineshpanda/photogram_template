class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string
  attribute :fname, :string
  attribute :lname, :string
  attribute :image, :string

  # Direct associations

  has_many   :likes

  # Indirect associations

end
