class BlogPost < ActiveRecord::Base
  # Default Scope
  # Constants
  # Attribute related macros
  # Associations
  # Validations
  validates :content, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :slug, presence: true, uniqueness: true

  # Callback
  # Other macros
  # Concerns
  # Named scopes
  scope :most_viewed, -> { order(views_count: :desc) }

  # Methods
  def to_param
    slug
  end
end
