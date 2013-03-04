class Course
  include Mongoid::Document
  attr_accessible :name, :description, :category_id, :start_date, :end_date
  field :name, type: String
  field :description, type: String
  #field :price, type: Float
  field :start_date, type: Date
  field :end_date, type: Date
  #field :max_people, type: Integer
  #field :num_visits, type: Integer
  #field :num_places_booked, type: Integer
  #field :category, type: String
  #field :date_created_at, type: Time
  #field :date_update_at, type: Time
  #field :instructor, type: String
  #field :location, type: String
  #field :tags, type: Array
  #feild :category_id, type: Id

  belongs_to :category

end
