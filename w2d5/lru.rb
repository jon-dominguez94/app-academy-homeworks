class LRUCache
   def initialize(size)
     @size = size
     @cache = []
   end

   def count
     # returns number of elements currently in cache
     cache.length
   end

   def add(el)
     # adds element to cache according to LRU principle
   end

   def show
     # shows the items in the cache, with the LRU item first
     (cache.length - 1).downto(0) {|i| puts cache[i]}
   end

   private
   # helper methods go here!
   attr_reader :cache, :size

 end
