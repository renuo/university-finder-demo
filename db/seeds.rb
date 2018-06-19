# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

raw = File.read(Rails.root.join('db', 'seed_data', 'university-domains-list', 'world_universities_and_domains.json'))

universities_raw = JSON.parse(raw).map do |university_raw|
  {
    web_page: university_raw['web_pages'].first,
    name: university_raw['name'],
    alpha_two_code: university_raw['alpha_two_code'],
    state: university_raw['state-province'],
    domain: university_raw['domains'].first,
    country: university_raw['country']
  }
end

University.create(universities_raw)
