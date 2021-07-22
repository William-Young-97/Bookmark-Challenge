require 'pg'
require './spec/setup_test_database'
require './app'

class Logic 
  
  def self.all
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test')
    else
      conn = PG.connect( dbname: 'bookmark_manager')
    end
    alottadata = conn.exec( "SELECT * FROM bookmarks")
    alottadata.map { |row| row['url'] }
  end

  def self.create(url)
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test')
    else
      conn = PG.connect( dbname: 'bookmark_manager')
    end
    nbookmark = conn.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end
