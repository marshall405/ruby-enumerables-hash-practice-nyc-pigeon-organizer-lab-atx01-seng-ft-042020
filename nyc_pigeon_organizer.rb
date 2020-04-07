def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  
  data.reduce(new_hash) do |memo, (outer_key,attr_hash)|
    attr_hash.each do |key,value|
        value.each do |name|
          if memo[name]
            if memo[name][key] 
              memo[name][key] << value
            end
          end
        end
    end
  end
end
