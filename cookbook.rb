require "csv.rb"

class Cookbook
    
    # create
    def initialize(csv_file_path)
        @recipes = []
        @csv_file_path = csv_file_path
        load_csv
    end

    # Read
    def all
        @recipes
    end

    # Update
    def create(recipe)
        @recipes << recipe
        save_csv
    end

    # Delete
    def destroy(index)
        @recipes.delete_at(index)
        save_csv
    end

    def save_csv
        CSV.open(@csv_file_path, "wb") do |csv|
            @recipes.each do |recipe|
                csv << [recipe.name, recipe.description]
            end
        end
    end

    private

    def load_csv
        CSV.foreach(@csv_file_path) do |row|
            name = row[0]
            description = row[1]
            recipe = Recipe.new(name, description)
            @recipes << recipe
        end
    end
end