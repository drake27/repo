class Mem < ActiveRecord::Base
    belongs_to:user
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
:default_url => "/images/:style/missing.png"

validates :name, presence: true

after_validation(on: :create) do
self.active = false
end

validates_attachment :image,
:content_type => { :content_type => ["image/jpg","image/jpeg", "image/gif", "image/png"] }
end
