require './model/bookmark_logic'
require 'pg'

describe Logic do

  describe '.all' do
    it 'Displays available bookmarks' do
      logic = Logic.all
      expect(logic).to include('http://www.makersacademy.com/')
    end
  end
end