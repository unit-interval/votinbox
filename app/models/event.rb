class Event

  include Mongoid::Document
  field :name
  field :shorturl
  belongs_to :user
  embeds_many :votes
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255

  validates_presence_of :shorturl

end