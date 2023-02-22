class Tag2 < ApplicationRecord
    has_many :alitz_tag2_relations, dependent: :destroy
    has_many :alitzs, through: :alitz_tag2_relations, dependent: :destroy
end
