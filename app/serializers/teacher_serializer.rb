class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :title, :username, :email, :passport_no, :country
end
