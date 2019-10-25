require './app'

feature 'View bookmarks' do
  scenario 'User can view a list of the bookmarks' do
  
    Bookmark.create(new_bookmark: 'www.makersacademy.com' )
    Bookmark.create(new_bookmark: 'www.destroyallsoftware.com' )
    Bookmark.create(new_bookmark: 'www.google.com' )

    visit ('/bookmarks')

    expect(page).to have_content 'www.makersacademy.com'
    expect(page).to have_content 'www.destroyallsoftware.com'
    expect(page).to have_content 'www.google.com'
  end
end
