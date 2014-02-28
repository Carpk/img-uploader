class Upload < ActiveRecord::Base
  # attr_accessible :image_url, :name

  # params.required
  # before_create :default_name
  #  def default_name
  #   self.name ||= File.basename(image_url, '.*').titleize if image_url
  #  end
  do_not_validate_attachment_file_type :image_url
end
