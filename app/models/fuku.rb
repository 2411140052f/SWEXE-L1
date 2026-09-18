class Fuku < ApplicationRecord
	validates :name, presence: { message: "を入力してください" }
end
