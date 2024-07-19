class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validate :cant_say_select

    def cant_say_select
        if body =~ /select/
            errors.add(:body,"Can't say select")
        end     
    end
end
