class Post < ApplicationRecord
    
    has_one_attached :image
    has_rich_text :body
    belongs_to :category

    has_many :taggings
    has_many :tags, through: :taggings, dependent: :delete_all

    validates :title, :summary, :body, presence: true

    def all_tags
        self.tags.map(&:name).join(', ')
    end

    def all_tags=(names)
        self.tags = names.split(',').map do |name|
            Tag.where(name: name.strip).first_or_create
        end
    end

end
