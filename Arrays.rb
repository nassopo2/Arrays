#Challenge
# Try the following methods at least once either on a separate Ruby file or on irb.
#1.at or .fetch
#2.delete
#3.reverse
#4.length
#5.sort
#6.slice
#7.shuffle
#8.join
#9.insert
#values_at() -> returns an array with values specified in the param
#e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

#1 .at
# Returns the element at the index. A negative index counts from the end of self.
#Returns nil if the index is out of range.

a = ["I", "like", "to", "code"]
a.at(0)      #=>"I"
a.at(-1)     #=>"code"

#2 .delete
# deletes all items from self that are equal to obj
# returns the last deleted item, or nil if no matching item is found

a = ["I", "like", "to", "code"]
a.delete ("to")      #=>"to"
#a                   #=>["I". "like","code"]
a.delete("z")        #=>nil

#3 .reverse
# returns a new array containing self elements in reverse order

a = ["I", "like", "to", "code"]
a = ["I", "like", "to", "code"]a.reverse     #=>["code","to", "like","I"]

#4 .length
# returns the number of elements in self

a = ["I", "like", "to", "code"].length     #=>4

#5 .sort
# Returns a new array created by sorting self.

a = [ "d", "a", "e", "c", "b" ]     #=> ["a", "b", "c", "d", "e"]
a.sort

#6 .slice
#Deletes the element(s) given by an index (optionally up to length elements) or by a range
#Returns the deleted object (or objects), or nil if the index is out of range.

a = ["I", "like", "to", "code"]
a.slice(1)     #=>"like"
a              #=>["I", "to", "code"]

#7 .shuffle
# Returns a new array with elements of self shuffled.

a = [1,2,3,4,5,6]
a.shuffle    #=>  4,1,6,3,5,2

#8 .join
#Returns a string created by converting each element of the array to a string, separated by the given separator

[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"

#9 .insert
# Inserts the given values before the element with the given index.
#Negative indices count backwards from the end of the array
# where -1 is the last element. If a negative index is used,
#the given values will be inserted after that element,
#so using an index of -1 will insert the values at the end of the array.

a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

#10 .values_at
#Returns an array containing the elements in self corresponding to the given selector(s).
#The selectors may be either integer indices or ranges.

a = %w{ a b c d e f }
a.values_at(1, 3, 5)          # => ["b", "d", "f"]
a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]               
