class User < ApplicationRecord
    has_secure_password
    has_many :toys

    def admin?
        self.admin == 1
    end
end
