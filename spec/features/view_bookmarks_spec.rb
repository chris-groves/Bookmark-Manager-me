require './app'

feature 'View bookmarks' do
  scenario 'User can view a list of the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")

    visit ('/bookmarks')
    
    expect(page).to have_content 'www.makersacademy.com'
    expect(page).to have_content 'www.destroyallsoftware.com'
    expect(page).to have_content 'www.google.com'
  end
end
