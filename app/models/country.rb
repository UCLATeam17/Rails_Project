class Country
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  belongs_to :user

end