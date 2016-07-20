class Validade < ActiveRecord::Base
  belongs_to :user
  belongs_to :produto
end
