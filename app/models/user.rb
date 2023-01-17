class User < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :email
    validates :email, uniqueness: true
    validates :api_key, uniqueness: true

    after_create :gen_key

    private

    def gen_key
     update(api_key: SecureRandom.alphanumeric(20))
    end
end