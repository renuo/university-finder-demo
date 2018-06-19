module UniversitiesHelper
  def university_label(university)
    state_label = university.state ? "• #{university.state}" : ''
    "#{university.country} #{state_label}"
  end
end
