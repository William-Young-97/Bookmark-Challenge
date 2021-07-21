require 'pg'
require './spec/setup_test_database'

class Logic 
  
  def self.all
    if ENV['RACK_ENV'] != 'test'
      conn = PG.connect( dbname: 'bookmark_manager')
      alottadata = conn.exec( "SELECT * FROM bookmarks")
      alottadata.map { | row | row['url'] }
    else ENV['RACK_ENV'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test')
      test_db  = conn.exec("SELECT * FROM bookmarks")
      test_db.map { | row | row['url'] }
    end
  end
end
