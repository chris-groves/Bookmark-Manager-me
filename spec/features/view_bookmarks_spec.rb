require './app'

feature 'View bookmarks' do
  scenario 'User can view a list of the bookmarks' do
    visit ('/bookmarks')
    expect(page).to have_content 'www.makersacademy.com'
    expect(page).to have_content 'www.destroyallsoftware.com'
    expect(page).to have_content 'www.google.co.uk'
  end
end
