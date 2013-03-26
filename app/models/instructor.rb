class Instructor
  include Mongoid::Document
  field :name, type: String
  field :email, type: String

  has_many :courses

  validates_presence_of :name, :email
  validates_uniqueness_of :name
  attr_accessible :name, :email
end