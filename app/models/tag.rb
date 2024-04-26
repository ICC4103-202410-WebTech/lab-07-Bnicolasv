class Tag < ApplicationRecord
  has_many :post_tags
  has_many :posts, through: :post_tags
  validates :name, presence: { message: "El nombre está vacío." },
  uniqueness: { message: "Esta etiqueta ya existe." }
end
