require './lib/bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'can return a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(title: 'Makers Academy', url: 'www.makers.tech')
      Bookmark.create(title: 'Destroy All Software', url: 'www.destroyallsoftware.com')
      Bookmark.create(title: 'Google', url: 'www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'www.makers.tech'

    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'www.bbc.co.uk', title: 'BBC')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'BBC'
      expect(bookmark.url).to eq 'www.bbc.co.uk'
    end
  end

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'www.makers.tech')

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end
  end
end
