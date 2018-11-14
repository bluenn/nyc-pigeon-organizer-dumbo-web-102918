require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  color_name = data[:color]

   color_name.each do |color_key, name_array|
     name_array.each do |identity|
      if pigeon_list.has_key?(identity) != true
        pigeon_list[identity] = {}
        pigeon_list[identity][:color] = []
        pigeon_list[identity][:color].push(color_key.to_s)
      else  
        pigeon_list[identity][:color].push(color_key.to_s)
      end
    end
  end
  gender_name = data[:gender]

   gender_name.each do |gender_key, name_array|
     name_array.each do |identity|
       if pigeon_list.has_key?(identity) == true
         pigeon_list[identity][:gender]= []
          pigeon_list[identity][:gender].push(gender_key.to_s)
        end
     end
   end

   location = data[:lives]

    location.each do |lives_key, name_array|
      name_array.each do |identity|
        if pigeon_list.has_key?(identity) == true
          pigeon_list[identity][:lives]= []
          pigeon_list[identity][:lives].push(lives_key.to_s)
         end
      end
    end


   pigeon_list
end
