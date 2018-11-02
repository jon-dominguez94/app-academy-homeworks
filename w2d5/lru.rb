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
     @cache.delete(el) if cache.include?(el)
     @cache << el
     @cache.shift if cache.length > size
   end

   def show
     # shows the items in the cache, with the LRU item first
     p cache
     nil
   end

   private
   # helper methods go here!
   attr_reader :cache, :size

 end
