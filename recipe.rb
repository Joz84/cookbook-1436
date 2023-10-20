class Recipe
    # read
    attr_reader :name, :description

    # create
    def initialize(name, description)
        @name = name
        @description = description
    end
end