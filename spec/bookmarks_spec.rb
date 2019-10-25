require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'can return a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('www.makersacademy.com')
      expect(bookmarks).to include('www.destroyallsoftware.com')
      expect(bookmarks).to include('www.google.com')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(new_bookmark: 'www.bbc.co.uk')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('www.bbc.co.uk')
    end
  end
end
