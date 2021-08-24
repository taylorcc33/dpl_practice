### BinaryGap ### ------------------------------------------------------------------
# def solution(n)
#   binary = n.to_s(2)
#   binary_array_string = binary.to_s.split('')
#   binary_array = binary_array_string.each_with_index do |v,i|
#       binary_array_string[i] = v.to_i
#   end

#   max = 0
#   count = 0

#   binary_array.each do |i|
#     if i == 1
#       max = count if count > max
#       count = 0
#     else
#       count = count + 1
#     end
#   end
#   max
# end

# p solution(1041)

### OddOccurencesInArray ### --------------------------------------------------------
# def solution(a)
#   unique_numbers = a.uniq
  
#   unique_numbers.each do |i|
#     if a.count(i).odd?
#       return i
#     end
#   end
# end

# p solution([9,3,9,3,9,7,9])

### FrogJmp ### ---------------------------------------------------------------------
# def solution(x, y, d)
#   if x == y
#     return 0
#   end

#   initial = (y.to_f - x.to_f) / d.to_f
#   jumps = initial.ceil
# end

# p solution(10, 85, 30)

### PermMissingElem ### -------------------------------------------------------------
# def solution(a)
#   sorted = a.sort

#   sorted.each_with_index do |v,i|
#     if v+1 != sorted[i+1]
#       return v+1
#     end
#   end
# end

# p solution([2,3,1,4,5,7])

### TapeEquilibrium ### ------------------------------------------------------------




# @input_user = 1

# def id_user
#   return [1,2,3,4,5,6]
# end

# def system_access
#   index_of_access = @input_user # 1
#   user_ids = id_user # [1,2,3,4,5,6]
  
#   validation = false

#   user_ids.each do |id|
#     if id == index_of_access
#       validation = true
#     end
#   end

#   if validation == true
#     puts "Valid"
#   else
#     puts "Invalid, not allowed access."
#   end
# end

# system_access






# res1 = {
#   id: 1,
#   name: "Spicy Thai",
#   location: {
#     city: "SLC",
#     state: "UT",
#   },
#   delivery: true,
#   days_open: "mon,tues,wed,thur,fri,sat,sun",
#   likes: 1000,
#   dishes: [
#     { name: "Pad Thai", price: 10.25, ingredients: ["noddles", "peppers"] },
#     { name: "Drunken Noodle", price: 9.25, ingredients: ["noddles", "chicken"] },
#   ],
#   reviews: [
#     { user_id: 1, rating: 5 },
#     { user_id: 2, rating: 3 },
#   ],
# }
# res2 = {
#   id: 2,
#   name: "Albertos",
#   location: {
#     city: "SLC",
#     state: "UT",
#   },
#   delivery: false,
#   days_open: "mon,tues,wed,thur,fri,sat",
#   likes: 500,
#   dishes: [
#     { name: "Tacos", price: 8.25, ingredients: ["tortilla", "carne"] },
#     { name: "Quesidalla", price: 9.25, ingredients: ["tortilla", "cheese"] },
#   ],
#   reviews: [
#     { user_id: 1, user_name: "Tony", rating: 2 },
#     { user_id: 2, user_name: "Sally", rating: 4 },
#   ],
# }










# bracket notation []
# arrays [index]
# hashes [:key]


# data = {
#   name: "My Restaurant",
#   dishes: [
#             {name: "tacos", ingredients: ["meat", "cheese", "lettuce"]},
#             {name: "sandwich", ingredients: ["meat", "cheese", "bread"]}
#           ]
# }






favorite_places = [
  {location: "Japan", population: "100,000,000", cuisine: ["sushi", "sashimi", "ramen"]}, 
  {location: "Spain", population: "30,000,000", cuisine: "tapas"}, 
  {location: "Japan", population: "100,000,000", cuisine: "sushi"}, 
  {location: "Japan", population: "100,000,000", cuisine: "sushi"}, 
  {location: "Japan", population: "100,000,000", cuisine: "sushi"},
  {location: "Japan", population: "100,000,000", cuisine: "sushi"}, 
  {location: "Japan", population: "100,000,000", cuisine: "sushi"}, 
]




@users = [
  {id: 1, name: "Taylor", hobbies: ["trail running", "reading", "surfing", "coding"]},
  {id: 2, name: "Janice", hobbies: [
                                      "video games", 
                                      "cooking", 
                                      "chess"
                                  ]
  }, 
  {id: 3, name: "George", hobbies: [
    "hiking", "reading", "movies", "coding"
    ]}, 
]


x = 2
y = 3

def add(num1, num2)
  return num1 + num2
end

puts add(x, y)

# I'm a comment!!
