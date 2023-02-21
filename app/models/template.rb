class Template < ApplicationRecord
    validates :title, :tag1, :tag2, :tag3, presence:true
end
