class Post < ApplicationRecord
    belongs_to :user
    has_many :tags, through: :post_tags
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_posts, class_name: "Post", foreign_key: "parent_post_id", dependent: :destroy

    validates :title, presence: { message: "Ingresa un titulo." }
    validates :content, presence: { message: "El post está vacío." }
    validates :user_id, presence: { message: "Debe estar asociado a un usuario." }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Debe tener 0 o más respuestas."  }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Debe tener 0 o más likes."  }

    before_validation :set_default_published_at

    private

    def set_default_published_at
      self.published_at ||= Time.current
  end
end
