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
  # Methods
  def to_param
    slug
  end
end
