feature 'We can view bookmarks' do
  scenario 'Can see a list of available bookmarks' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks(url) VALUES ('http://www.makersacademy.com/');")
    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com/'
  end
end