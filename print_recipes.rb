
def display_all_recipes(recipes)
  recipes.each_with_index do |recipe, recipe_id|
    puts "#{recipe_id}: #{recipe}"
  end
end

def display_target_recipe(recipes, target_id)
  puts "#{target_id}: #{recipes[target_id]}"
end

target_recipe_id = ARGV[0]
File.open('recipes.txt') do |file|
  recipes = file.read.split("\n")

  if target_recipe_id
    display_target_recipe(recipes,target_recipe_id.to_i)
  else
    display_all_recipes(recipes)
  end
end
