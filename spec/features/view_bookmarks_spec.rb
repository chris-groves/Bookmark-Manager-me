require './app'

feature 'View bookmarks' do
  scenario 'User can view a list of the bookmarks' do

    Bookmark.create(title: 'Makers Academy', url: 'https://www.makersacademy.com' )
    Bookmark.create(title: 'Destroy All Software', url: 'https://www.destroyallsoftware.com' )
    Bookmark.create(title: 'Google', url: 'https://www.google.com' )

    visit ('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'https://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'https://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'https://www.google.com')
  end
end
