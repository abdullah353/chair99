Rails.application.routes.draw do
  get 'portal/csv_portal'

  namespace :api do
    namespace :v1 do
      post 'csv_parser/filter_first_name'
      post 'csv_parser/read_csv'
      get 'csv_parser/read_csv'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
