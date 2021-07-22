feature 'We can view bookmarks' do
  scenario 'Can see a list of available bookmarks' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks(url) VALUES ('http://www.makersacademy.com/');")
    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com/'
  end
end

feature 'We can enter a bookmark' do
  scenario 'Can submit form which saves entry to database' do
    visit('/')
    fill_in('url', with: 'www.hi.com')
    click_button("Create bookmark")
    expect(page).to have_content("www.hi.com")
  end
end