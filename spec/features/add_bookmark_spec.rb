require './app'

feature 'Add a bookmark' do
  scenario 'User can add a new bookmark' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'https://www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button 'Add Bookmark'

    expect(page).to have_link('BBC', href: 'https://www.bbc.co.uk')
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('url', with: 'not a real bookmark')
    click_button('Add Bookmark')

    expect(page).not_to have_content 'not a real bookmark'
    expect(page).to have_content 'You must submit a valid URL.'
  end
end
