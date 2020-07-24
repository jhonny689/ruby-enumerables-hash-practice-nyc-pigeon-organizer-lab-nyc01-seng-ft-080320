require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_names=collect_names(data)
  pigeon_list = {}
  pigeon_names.each { |element|
    pigeon_list[element] = {:color => [], :gender => [], :lives => []}
  }
  
  append_colors(pigeon_list, data)
  
  binding.pry
end

def collect_names(data)
  result = []
  data.each{ |el_key, el_value|
    #binding.pry
    el_value.each {|name_key, name_value|
    #binding.pry
      result = (result+name_value).uniq
      #binding.pry
    }
  }
  result
end

def append_colors(pigeon_list, data)
  color=""
  data.each{ |el_key, el_value|
    #binding.pry
    el_value.each {|color_as_key, names|
      color = color_as_key.to_s
      names.each{ |name|
        pigeon_list[name][:color].push(color)
      }
      binding.pry
    }
  }
end