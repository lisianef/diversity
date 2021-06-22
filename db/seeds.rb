# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach(Rails.root.join('lib/tasks/goodreads_library_export.csv'), headers: true) do |row|

    Book.create({
        title: row[1],
        pages: row[11],
        publication_year: row[12],
        ISBN: row[6],
        status: row[18]

    })

end


# t.string "title"
#     t.integer "pages"
#     t.integer "publication_year"
#     t.integer "cover"
#     t.integer "ISBN"
#     t.string "status"
#     t.string "goodreads_link"