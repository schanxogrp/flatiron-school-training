# Hashes and Arrays are great for storing structured data.

vending_machine = {
  :a => ["Snickers", "Butterfinger"],
  :b => ["Coke", "Snapple", "Sprite"],
  :c => nil
}

vending_machine[:a]

organized_songs = {
  :the_magnetic_fields => {
    :love_songs => [],
    :get_lost => []
  },
  :neutral_milk_hotel => {
    :aeroplane => []
  },
  :talyor_swift => {
    :awesomeness => []
  }
}

organized_songs = {
  :the_magnetic_fields => {
      :love_songs => [],
      :get_lost => []
    },
  :neutral_milk_hotel => {
    :aeroplane => []
  },

}

organized_songs[:talyor_swift] = {}


# You can chain accessors together to get to deeply nested values
puts vending_machine[:a][0]
puts vending_machine[:b][2]

magnetic_fields = {
  :love_songs => {
    :cd_1 => ["Luckiest Guy on the Lower East Side", "Reno Dakota"],
    :cd_2 => ["Papa Was a Rodeo", "Long-Forgotten Fairytale"],
    :cd_3 => ["Busby Berkeley Dreams", "Bitter Tears"]
  },
  :get_lost => ["Smoke and MIrror", "Umbrellas"],

}

taxes = {
  :personal => {
    :2009 => ["100"],
    :2010 => ["10"]
  },
  :businses => {
    :2008 => ["80"]
  }
}

taxes[:business][:2008][0]
puts magnetic_fields[:love_songs][:cd_1][0]

# Nesting also works with assigning values
magnetic_fields[:get_lost] = ["Smoke and Mirrors"]

magnetic_fields[:get_lost][1] = ["You, Me, and the Moon"]

# Since the value of indexes in arrays and keys are just objects
# you can also call methods directly on those objects.


# The 'push' method will add an element to an array.
magnetic_fields[:get_lost].push "All the Umbrellas in London"

puts magnetic_fields[:get_lost].size
