require './model/bookmark_logic'
require 'pg'

describe Logic do

  describe '.all' do
    it 'Displays available bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')
      conn.exec("INSERT INTO bookmarks(url) VALUES ('http://www.makersacademy.com/');")
      logic = Logic.all
      expect(logic).to include('http://www.makersacademy.com/')
    end
  end
end