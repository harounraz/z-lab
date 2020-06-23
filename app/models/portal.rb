class Portal < ApplicationRecord
  belongs_to :teacher

  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end
end
