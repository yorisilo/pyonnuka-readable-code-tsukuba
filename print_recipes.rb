# coding: utf-8
# id は 0から

def display_all_recipes(recipes)
  recipes.each_with_index do |recipe, recipe_id|
    puts "#{recipe_id}: #{recipe}"
  end
end

def display_target_recipe(recipes, target_id)
  puts "#{target_id}: #{recipes[target_id]}"
  # p recipes[target_id]
end

def usr_link_recipes(usr)
  puts "ユーザー名: " + usr
end

usr_name = ARGV[0]
target_recipe_id = ARGV[1]

File.open('recipes.txt') do |file|
  recipes = file.readlines
  usr_link_recipes(usr_name)
  if target_recipe_id
  display_target_recipe(recipes, target_recipe_id.to_i)
  else
    display_all_recipes(recipes)
  end
end
