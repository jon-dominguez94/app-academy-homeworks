require 'lru'

RSpec.describe LRUCache do
  subject(:cache) { LRUCache.new(4)}

  describe '#initialize' do
    it 'exposes the size instance variable' do
      expect(cache.size).to eq(4)
    end
    it 'creates an empty array @cache instance variable' do
      expect(cache.cache).to be_empty
    end
  end

  describe '#add' do
    before(:each) { cache.add(1) }
    it 'adds a new element to the cache' do
      expect(cache.cache).to eq([1])
    end
  end

  describe '#count' do

  end
end
