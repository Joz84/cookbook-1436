class View
    def display_list(recipes)
        recipes.each_with_index do |recipe, index|
            puts "#{index + 1} - #{recipe.name} : #{recipe.description}"
        end
    end

    def ask_name
        puts "Name?"
        print "> "
        gets.chomp
    end

    def ask_description
        puts "Description?"
        print "> "
        gets.chomp
    end

    def ask_index
        puts "index?"
        print "> "
        gets.chomp.to_i - 1
    end

end