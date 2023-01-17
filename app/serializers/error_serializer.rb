class ErrorSerializer
    def self.email_error
        {
            "message": "Unable to create User",
            "error": "Email is already being used"
        }
    end
end