class Alitz < ApplicationRecord
 belongs_to :user
 
 has_many :alitz_tag_relations, dependent: :destroy

 has_many :tags, through: :alitz_tag_relations, dependent: :destroy

end
