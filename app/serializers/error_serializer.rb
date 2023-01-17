class ErrorSerializer
    def self.email_error
        {
            "message": "Unable to create User",
            "error": "Email is already being used"
        }
    end

    def self.api_error
        {
            "message": "Was not added to favorites",
            "error": "INVALID API KEY"
        }
    end
end