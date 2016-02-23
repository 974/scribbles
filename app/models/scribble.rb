class Scribble
  include Mongoid::Document
  validates :title,   presence: true,
                      length: { minimum: 5 }
  validates :content, presence: true,
                      length: { minimum: 5 }
  field :title
  field :content
end
