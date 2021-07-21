require 'pg'

def fresh_table
  test_db = PG.connect( dbname: 'bookmark_manager_test')
  test_db.exec('TRUNCATE TABLE bookmarks;')
end