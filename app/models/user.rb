class User < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :email
    validates :email, uniqueness: true
    # validates :api_key, uniqueness: true
    has_many :favorites
    
    before_create :gen_key

    private

    def gen_key
     self.api_key = SecureRandom.alphanumeric(20)
    end
end