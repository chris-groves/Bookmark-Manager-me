require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'can return a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('www.makersacademy.com')
      expect(bookmarks).to include('www.destroyallsoftware.com')
      expect(bookmarks).to include('www.google.co.uk')
    end
  end
end
