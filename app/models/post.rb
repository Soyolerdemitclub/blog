class Post < ActiveRecord::Base
        max_paginates_per 3
	has_attached_file :avatar, styles: { medium: "548x400>", thumb: "800x800>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    extend FriendlyId
   friendly_id :title, use: :slugged
end
