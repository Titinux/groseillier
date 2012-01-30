Rails.application.routes.draw do
  scope 'admin' do
    root to: 'dashboard#show'
  end
end
