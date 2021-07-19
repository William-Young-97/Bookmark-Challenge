require './model/bookmark_logic'

describe Logic do

  describe '.all' do
    it 'Displays available bookmarks' do
        logic = Logic.all
      expect(logic).to include("Wikipedia", "Cooking Channel", "Seeking Alpha")
    end
  end
end