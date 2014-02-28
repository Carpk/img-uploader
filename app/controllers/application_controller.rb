class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @upload = Upload.new
  end

  def view
    puts "is this hitting the view?"
  end

  private

  def upload_params
    params.require(:upload).permit(:title, :image_url)
  end
end
