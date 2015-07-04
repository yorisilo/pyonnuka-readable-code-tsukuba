File.open('recipes.txt') do |file|
  recipes = file.read.split("\n")

  recipes.each_with_index do |recipe, recipe_id|
    puts "#{recipe_id}: #{recipe}"
  end
end
