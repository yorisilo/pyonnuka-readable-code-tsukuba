File.open('recipes.txt') do |file|
  file.read.each_line do |recipe|
    puts recipe
  end
end
