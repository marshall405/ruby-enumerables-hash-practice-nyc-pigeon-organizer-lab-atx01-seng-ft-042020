def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |outer_key, attr_hash|

    attr_hash.each do |attr_key, attr_arr|

      attr_arr.each do |name|
        if new_hash[name] 
          new_hash[name][outer_key] << attr_key.to_s
        else
          new_hash[name] = {
            :color => [],
            :gender => [],
            :lives => []
          }
          new_hash[name][outer_key] << attr_key.to_s
        end
      end
    end

  end
  new_hash
end
