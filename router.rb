class Router
    def initialize(controller)
        @controller = controller
    end

    def run
        puts "---- Welcome ----"

        loop do
            puts "1 - List all recipes"
            puts "2 - Create a recipe"
            puts "3 - Delete a recipe"
            puts "4 - Quit cookbook"

            action = gets.chomp.to_i

            case action
            when 1 then @controller.list
            when 2 then @controller.add
            when 3 then @controller.remove
            when 4 then break
            end

            puts "==================="
        end
    end
end