
require 'csv'
csv_text = File.read(Rails.root.join('db', './data_dump_final.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  # byebug
# CSV.foreach(csv, :headers => true) do |row|
  new_row = row.to_hash
  @title = new_row.keys[0]

  c = Course.new

  c.title = row['title']
  c.image = row['image']
  c.summary = row['summary']
  c.slug = row['slug']
  c.syllabus = row['syllabus']
  c.affiliates = row['affiliates']
  c.tags = row['tags']
  c.tracks = row['tracks']
  c.level = row['level']
  c.provider = row['provider']

  if c.valid?
    c.save
  else
    byebug
  end
end
