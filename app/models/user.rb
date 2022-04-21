class User < ApplicationRecord
  validates :email, uniqueness: true #que el email sea único
  validates_format_of :email, with: /@/ #que el email tenga un formato válido
  validates :password_digest, presence: true #que la contraseña siempre contenga algo

  # • La contraseña debe estar presente en la creación.
  # • La longitud de la contraseña debe ser menor o igual a 72 bytes.
  # • La confirmación de la contraseña password_confirmation (si es enviado)
  has_secure_password
end
