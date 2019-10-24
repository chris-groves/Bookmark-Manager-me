require './app'

feature 'Add a bookmark' do
  scenario 'User can add a new bookmark' do
    visit ('/bookmarks/new')
    fill_in('new_bookmark', with: 'www.bbc.co.uk')
    click_button 'Add Bookmark'

    expect(page).to have_content 'www.bbc.co.uk'
  end
end
