class Country
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  has_many :users

  field :name, type: String

end