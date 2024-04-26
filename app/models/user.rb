class User < ApplicationRecord
  has_many :posts

  validates :name, presence: { message: "Ingresa un nombre válido" }
  validates :email, presence: { message: "Ingresa un correo electronico." },
  uniqueness: { message: "Este correo ya está en uso." },
  format: { with: URI::MailTo::EMAIL_REGEXP, message: "Por favor, ingresa un correo electrónico válido." }
  validates :password, presence: { message: "La contraseña no puede estar en blanco." },
  length: { minimum: 6, message: "La contraseña debe tener al menos 6 caracteres." }




end
