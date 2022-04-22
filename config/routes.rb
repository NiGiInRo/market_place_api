Rails.application.routes.draw do
  # Api definition
  # Rails automáticamente mapeara que espacio de nombres corresponde al folder de los controlladores, en nuestro caso el directorio api/`
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      # We are going to list our resources here
      resources :users, only: %i[show create]
    end
  end
end
