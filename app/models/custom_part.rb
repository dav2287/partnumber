class CustomPart < ActiveRecord::Base
  belongs_to :part

  def prev
  	part.custom_parts.where("id < ?", id).last
  end
end
