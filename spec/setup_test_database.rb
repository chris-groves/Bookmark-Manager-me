require 'pg'

connection = PG.connect(dbname: 'bookmark_mnanager_test')

connection.exec("TRUNCATE bookmarks;")
