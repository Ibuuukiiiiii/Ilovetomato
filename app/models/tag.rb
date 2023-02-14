class Tag < ApplicationRecord

    has_many :alitz_tag_relations, dependent: :destroy

    has_many :alitzs, through: :alitz_tag_relations, dependent: :destroy
    
end
