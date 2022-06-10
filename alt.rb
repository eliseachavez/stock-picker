stock_prices =[17,3,6,9,15,8,6,1,10] #9 days
# make permutations of every pair.
# make hash where diff is the key,
# and value is the buy sell day pair

# make permutation
perms = stock_prices.permutation(2).to_a

# make a hash, add permutations, and get corresponding index pairs for the values
stock_pairs = Hash.new(perms.size)
perms.each do |perm|
  index1 = stock_prices.find_index(perm[0])
  index2 = stock_prices.find_index(perm[1])
  stock_pairs[perm] = [index1, index2]
end
#eliminate index pairs where subsequent number isn't larger
ordered_stock_pairs = stock_pairs.select {|price_pair, day| day[1] > day[0] } #k,v is price, index. price is arr
# get their differences?
#
# {
#    [17,3]=>[0,1] //key(prices):value(indexes)
#    []=>[]
#    []=>[]
# }
p "stock_pairs that are in good order are #{ordered_stock_pairs}"

