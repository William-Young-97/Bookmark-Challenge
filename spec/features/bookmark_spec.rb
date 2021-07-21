feature 'We can view bookmarks' do
  scenario 'Can see a list of available bookmarks' do
    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com/'
  end
end