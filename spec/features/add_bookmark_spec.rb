require './app'

feature 'Add a bookmark' do
  scenario 'User can add a new bookmark' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button 'Add Bookmark'

    expect(page).to have_link('BBC', href: 'www.bbc.co.uk')
  end
end
