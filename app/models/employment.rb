class Employment < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :employee
end
