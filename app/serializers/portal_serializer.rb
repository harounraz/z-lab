class PortalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :semester, :slug, :teacher_id

  belongs_to :teacher
end
