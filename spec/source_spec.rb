require_relative '../model/item'
require_relative '../model/source'
require 'date'

describe Source do
  before :each do
    @item = Item.new(publish_date: '2010-10-14')
    @source = Source.new(name: 'The name')
  end

  it 'should have empty item list' do
    expect(@source.items.length).to eq(0)
  end

  it 'Should return item list equal to 1' do
    @source.add_item(@item)
    expect(@source.items.length).to eq(1)
  end
end
