class Wagon < ActiveRecord::Base

  belongs_to :train
  belongs_to :utype
end
