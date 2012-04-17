class Vote

  include Mongoid::Document
  field :name
  has_many :judges, :through => :judges, :source => :user, :uniq => true
  embeds_in :votes
  belongs_to :user
  
  validates_presence_of :name
  validates_length_of :name, :maximum => 255

  validates_presence_of :shorturl

end
