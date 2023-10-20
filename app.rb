require_relative "recipe.rb"
require_relative "cookbook.rb"
require_relative "controller.rb"
require_relative "router.rb"

csv_file_path = "recipes.csv"
cookbook = Cookbook.new(csv_file_path)
controller = Controller.new(cookbook)
router = Router.new(controller)

router.run