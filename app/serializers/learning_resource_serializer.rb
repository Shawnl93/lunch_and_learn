class LearningResourceSerializer
    include JSONAPI::Serializer

    set_id{nil}

    attributes :country

    attributes :videos do |v|
        v.videos
    end

    attributes :images do |i|
        i.images
    end
end