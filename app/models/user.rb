class User < ApplicationRecord
  validates :email, uniqueness: true #que el email sea único
  validates_format_of :email, with: /@/ #que el email tenga un formato válido
  validates :password_digest, presence: true #que la contraseña siempre contenga algo
end
