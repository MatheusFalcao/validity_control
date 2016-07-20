class Produto < ActiveRecord::Base
  belongs_to :user
  has_many :validades
end
