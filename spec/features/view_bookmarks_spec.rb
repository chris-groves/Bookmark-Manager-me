require './app'

feature 'View bookmarks' do
  scenario 'User can view a list of the bookmarks' do

    Bookmark.create(title: 'Makers Academy', url: 'www.makersacademy.com' )
    Bookmark.create(title: 'Destroy All Software', url: 'www.destroyallsoftware.com' )
    Bookmark.create(title: 'Google', url: 'www.google.com' )

    visit ('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'www.google.com')
  end
end
