class Youtube
    attr_reader :country,
                :title,
                :video_id,
                :alt_tag,
                :url

    def initialize(data, data2, country)
        @country = country
        @title = data[:snippet][:title]
        @video_id = data[:id][:videoId]
        @alt_tag = data2[0][:alt_description]
        @url = data2[0][:urls][:regular]
    end

    def videos
        {
          "title": "#{self.title}",
          "youtube_video_id": "#{self.video_id}"
        }
    end

    def images
        [{
          "alt_tag": "#{self.alt_tag}",
          "url": "#{self.url}"
        }]
    end
end