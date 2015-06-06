json.array!(@people) do |person|
  json.extract! person, :id, :classId, :name, :sex, :birthday, :leavingDate, :officePhone, :homePhone, :grduateSchool, :company, :jobTitle, :skill, :email, :country, :area, :address, :permission, :status
  json.url person_url(person, format: :json)
end
