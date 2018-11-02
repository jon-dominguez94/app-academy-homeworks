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
    it 'adds many elements to the cache' do
      cache.add("hi")
      cache.add({a:2, b:"hello"})
      cache.add([1,2,3])
      expect(cache.cache).to eq([1, "hi", {a:2, b:"hello"},[1,2,3]])
    end
    it 'does not add duplicates' do
      cache.add("hi")
      cache.add(1)
      expect(cache.cache).to eq(["hi", 1])
    end
    it 'keeps a max size and deletes the least recently used element' do
      cache.add("hi")
      cache.add({a:2, b:"hello"})
      cache.add([1,2,3])
      cache.add(2)
      expect(cache.cache).to_not include(1)
      expect(cache.cache).to eq(["hi", {a:2, b:"hello"},[1,2,3],2])
    end
  end


  describe '#count' do
    before(:each) { cache.add(2); cache.add(3) }
    it 'returns the amount of elements in the cache' do
      expect(cache.count).to eq(2)
    end
  end

  describe '#show' do
    before(:each) { cache.add(2); cache.add(3); cache.add("hi") }
    it 'prints the elements in the cache' do
      expect(cache.show).to include("hi")
    end
  end
end
