class RecipesFacade
    def self.recipes(country)
        data = RecipesService.recipes(country)
        data[:hits].map do |h|
            Recipes.new(h, country)
        end
    end
end