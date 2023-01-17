class LearningFacade
    def self.learn(country)
        data = LearningService.learn(country)[:items].first
        data2 = UnsplashService.image(country)[:results]
        Youtube.new(data, data2, country)
    end
end