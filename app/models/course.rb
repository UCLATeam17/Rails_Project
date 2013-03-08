class Course
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes

  attr_accessible :name, :description, :category_id, :start_date, :end_date, :tags, :price, :num_places, :location

  field :name, type: String
  field :description, type: String
  field :price, type: BigDecimal
  field :start_date, type: Date
  field :end_date, type: Date
  field :num_places, type: Integer
  field :num_visits, type: Integer, default: -> {0}
  field :num_places_booked, type: Integer, default: -> {0}
  field :date_created_at, type: Time, default: ->{ Time.now }
  field :date_update_at, type: Time, default: ->{ Time.now }
  #field :instructor, type: String
  field :location, type: String
  field :tags, type: Array

  belongs_to :category
  validates_presence_of :category_id, :message => "must be selected"
  validates_presence_of :name, :description, :price, :num_places, :start_date, :end_date, :location, :tags
  validates_uniqueness_of :name

  validate :valid_date_range_required, :start_date_cannot_be_in_the_past
  tags = :tags


  def valid_date_range_required
    if (:start_date && :end_date) && (:start_date < :end_date)
      errors.add(:end_date, "must be later than the start date")
    end
  end

  def start_date_cannot_be_in_the_past
    if (!start_date.blank?) && (start_date < Date.today)
      errors.add(:start_date, "can't be in the past")
    end
  end

  def tags=(from_form)
  	from_form = from_form.downcase
    from_form = "" unless from_form.respond_to?(:split)
    write_attribute(:tags, from_form.split(/\s*[,;]\s* | \s{1,} /x))
  end

end
