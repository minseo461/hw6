class Post < ActiveRecord::Base
    belongs_to :category
    
    def self.search(search)
        if search
            where('contents LIKE ?', "%#{search}%")
        end
    end
end
