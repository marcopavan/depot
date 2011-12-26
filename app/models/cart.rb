class Cart < ActiveRecord::Base
	has_many :line_item, dependent: :destroy
end
