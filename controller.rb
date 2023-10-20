require_relative "view.rb"
require_relative "recipe.rb"

class Controller
    def initialize(cookbook)
        @cookbook = cookbook
        @view = View.new
    end

    def list
        # Demander à cookbook la liste et la stocker dans une variable
        # Demander à view d'afficher la liste
        recipes = @cookbook.all
        @view.display_list(recipes)
    end

    def add
        # Demander à view le nom de la recipe et la stocker dans une variable
        # Demander à view la description de la recipe et la stocker dans une variable
        # Demander à Recipe de créer une instance de recipe
        # Demander à cookbook d'ajouter la recipe dans le tableau recipes
        name = @view.ask_name
        description = @view.ask_description
        recipe = Recipe.new(name, description)
        @cookbook.create(recipe)
    end
     
    def remove
        # Demander à view l'index de la recipe à supprimée et la stocker dans une variable
        # Demander à cookbook supprimer la recipe du tableau
        index = @view.ask_index
        @cookbook.destroy(index)
    end
end

