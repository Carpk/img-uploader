Imgapp::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'application#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


  # OMG READ THIS, THESE ARE IMPORTANT NOTES!!!!!!!!

  # no local storage with heroku, need to use amazon s3 or cloudinary
  # mini_magick - look into it


  # CDN (Content Delivery Network):
  # Amazon S3 + Amazon CloudFront
  # Rackspace Cloud Files
  # Cloudinary

  # managing cloud services:
  # fog gem (actively developed by guys at Heroku and Engine Yard)
  # cloudinary gem
  # carrierwave gem (handles automatic uploading to CDN and database storage)


end
