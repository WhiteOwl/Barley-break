# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
FasterCSV.foreach("db/default_content.csv", :quote_char => '"', :col_sep => ",", :row_sep =>:auto) do |row|
  State.create :content => row[1]
end
