###### DATABASE #####

@data = [
  {name: "broccoli", price: "2", type: "produce"},
  {name: "apples", price: "1", type: "produce"},
  {name: "bananas", price: "2", type: "produce"},
  {name: "steak", price: "7", type: "meat"},
  {name: "salmon", price: "10", type: "meat"},
  {name: "cookies", price: "3", type: "snacks"},
  {name: "chips and salsa", price: "4", type: "snacks"},
  {name: "pasta", price: "2", type: "carbs"},
  {name: "bread", price: "3", type: "carbs"},
  {name: "toothpaste", price: "5", type: "hygiene"},
]

###### MAIN APP FUNC ######
def app
  main_menu
end

###### HELPER FUNCS ######
def get_user_input
  user_input = gets.chomp
end

def back_to_main_menu
  puts ""
  puts "Return to main menu?"
  puts "y/n"

  user_input = get_user_input
  if user_input == "y"
    main_menu
  else
    exit
  end
end

def print_all_items
  puts ""

  @data.each_with_index do |v, i|
    puts "#{i+1}) #{v[:name]}  $#{v[:price]}"
  end
end

def print_items_by_type
  produce_items = []
  meat_items = []
  snack_items = []
  other_items = []

  @data.each do |i|
    if i[:type] == "produce"
      produce_items.push(i)
    elsif i[:type] == "meat"
      meat_items.push(i)
    elsif i[:type] == "snacks"
      snack_items.push(i)
    else
      other_items.push(i)
    end
  end

  puts "Produce:"
  produce_items.each do |p|
    puts "- #{p[:name]}  $#{p[:price]}"
  end
  puts ""

  puts "Meat:"
  meat_items.each do |m|
    puts "- #{m[:name]}  $#{m[:price]}"
  end
  puts ""

  puts "Snacks:"
  meat_items.each do |s|
    puts "- #{s[:name]}  $#{s[:price]}"
  end
  puts ""

  puts "Other:"
  other_items.each do |o|
    puts "- #{o[:name]}  $#{o[:price]}"
  end
end

###### CRUD FUNCS ######
def view_items
  print_items_by_type

  back_to_main_menu
end

def add_item
  puts ""
  puts "What kind of item do you want to add?"
  puts "1 - Produce"
  puts "2 - Meat"
  puts "3 - Snacks"
  puts "4 - Other"

  item_type = get_user_input
  if item_type == "1"
    item_type = "produce"
  elsif item_type == "2"
    item_type = "meat"
  elsif item_type == "3"
    item_type = "snacks"
  else
    item_type = "other"
  end
  
  puts ""
  puts "What is the item name?"
  item_name = get_user_input

  puts ""
  puts "What is the price of the item?"
  item_price = get_user_input

  @data.push( {name: item_name, price: item_price, type: item_type})
 
  back_to_main_menu
end

def edit_item
  puts ""
  puts "What item would you like to edit"
  print_all_items
  puts ""

  user_input = get_user_input
  


end

def delete_item

end

def main_menu
  puts """          --------------------------
          |   Welcome to the Ruby  |
          |      Grocery List      |
          --------------------------
          """

  puts ""
  puts "1) View Grocery List"
  puts "2) Add Item to List"
  puts "3) Edit Item in List"
  puts "4) Delete Item in List"
  puts "5) Quit"
  puts ""
  
  user_input = get_user_input

  case user_input
  when "1"
    view_items
  when "2"
    add_item
  when "3"
    edit_item
  when "4"
    delete_item
  when "5"
    exit
  end
end

app