Rails.application.routes.draw do
  mount Microservice::Toolkit::HealthCheck::App => '/health_check'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
