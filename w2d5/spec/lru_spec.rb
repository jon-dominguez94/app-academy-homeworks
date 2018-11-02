require 'lru'

RSpec.describe LRUCache do
  describe '#initialize' do
    subject(:cache) { LRUCache.new(4)}
    it 'exposes the size instance variable' do
      expect(cache.size).to eq(4)
    end
    it 'creates an empty array @cache instance variable' do
      expect(cache.cache).to be_empty
    end
  end
end
