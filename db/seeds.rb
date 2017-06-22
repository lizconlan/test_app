# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

assemblies = Assembly.create([{ name: 'A Test' }, { name: 'B Test' }])

I18n.with_locale(:es) do
  assemblies[0].name = '1 Test'
  assemblies[0].save
  assemblies[1].name = '0 Test'
  assemblies[1].save
end

Part.create(part_number: "42", assemblies: assemblies)
