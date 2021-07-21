require 'pg'

class Logic 
  def self.all
    conn = PG.connect( dbname: 'bookmark_manager')
    alottadata = conn.exec( "SELECT * FROM bookmarks")
    alottadata.map { | row | row['url'] }
  end

end
