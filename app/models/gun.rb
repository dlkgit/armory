class Gun < ActiveRecord::Base
	belongs_to :gun_action
	belongs_to :manufacturer
	belongs_to :powder_type
  belongs_to :gun_type
end
