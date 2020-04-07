def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.reduce(new_hash) do |memo, (outer_key, attr_hash)|
    
    attr_hash.each do |attr_key, attr_arr|
      attr_arr.each do |name|

        if memo[name] 
          memo[name][outer_key] << attr_key
          puts memo[name]
          puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        else
          memo[name] = {
            "color" => [],
            "gender" => [],
            "lives" => []
          }
        end
      end
    end
  end
end







# data.reduce, iterate over three keys in data
# each key (:color) is a hash, so we must iterate over each key 
# key.each, iterate over each key hash - key and array 

# iterate over arrays, check if name in array is a key in the new_hash
# if it exists we can add element to new_hash[name][attr] => which is an array

#if it doesnt exist we must create it. new_hash[name] = {
#   color => []
#   gender => []
#   lives => []
# }