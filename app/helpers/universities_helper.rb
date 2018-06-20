module UniversitiesHelper
  def university_label(university)
    state_label = university.state ? " • #{university.state}" : ''
    university.country + state_label
  end

  def google_maps_link(university)
    "https://www.google.com/maps/search/#{CGI.escape(university.name)}"
  end
end
