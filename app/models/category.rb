class Category
  include Mongoid::Document
  field :name, type: String

  has_many :courses

  validates_presence_of :name
  validates_uniqueness_of :name
  attr_accessible :name
end
