class Corsair < ApplicationRecord
	validates :first_name, presence: true,
						   length: {maximum:20}
			  :age, prensece:true
			  		length: {minimum:15, maximum:120}

			   :slack_handle: 

end
