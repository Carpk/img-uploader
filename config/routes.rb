Imgapp::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'application#index'

  post 'uploaded' => 'application#view', as: 'uploaded'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


  # OMG READ THIS, THESE ARE IMPORTANT NOTES!!!!!!!!

  # no local storage with heroku, need to use amazon s3 or cloudinary
  # mini_magick instead of rmagick- look into it
  # Heroku has an explicit 30 second http timeout

  # video: http://railscasts.com/episodes/182-cropping-images


  # CDN (Content Delivery Network):
  # Amazon S3 + Amazon CloudFront
  # Rackspace Cloud Files
  # Cloudinary

  # managing cloud services:
  # fog gem (actively developed by guys at Heroku and Engine Yard)
  # cloudinary gem
  # carrierwave gem (handles automatic uploading to CDN and database storage)

  # WORKFLOW with paperclip and s3_upload
  # User uploads their file directly to a temporary directory on S3
  # A form callback posts the temporary file URL to our app
  # Our app creates a new Document object, sets some initial data from the temporary S3 file, then queues a background process to move the temporary file to the location that Paperclip expects it to be and to process thumbnails if required
  # Show users a message if they visit a file page while its still being processed

  # ORIGINAL CORS CONFIG:
  # <CORSConfiguration>
  #     <CORSRule>
  #         <AllowedOrigin>*</AllowedOrigin>
  #         <AllowedMethod>GET</AllowedMethod>
  #         <MaxAgeSeconds>3000</MaxAgeSeconds>
  #         <AllowedHeader>Authorization</AllowedHeader>
  #     </CORSRule>
  # </CORSConfiguration>

end
