class Course
  include Mongoid::Document
  attr_accessible :name, :description, :category
  field :name, type: String
  field :description, type: String
  #field :price, type: Float
  #field :startdate, type: Date
  #field :duration, type: Integer
  #field :max_people, type: Integer
  #field :num_visits, type: Integer
  #field :num_places_booked, type: Integer
  field :category, type: String
  #field :date_created_at, type: Time
  #field :date_update_at, type: Time
  #field :instructor, type: String
  #field :location, type: String
  #field :tags, type: Array
  #feild :category_id, type: Moped::BSON::ObjectId

  #belongs_to :category
  
end
