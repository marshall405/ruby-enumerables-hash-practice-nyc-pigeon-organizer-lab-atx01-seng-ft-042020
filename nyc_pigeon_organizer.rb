def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  
  data.reduce(new_hash) do |memo, (key,attr_hash)|
    puts "starting.........."
    puts memo
    puts key
    puts attr_hash
    puts "ending............"
  end
end
