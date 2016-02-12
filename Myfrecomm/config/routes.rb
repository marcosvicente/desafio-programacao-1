Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt\-BR/ do
    resources :products
    root "main#index"
  end
end
