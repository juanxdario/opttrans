class Remittance < ActiveRecord::Base
  belongs_to :customer
  belongs_to :rem_status
  belongs_to :service
  belongs_to :del_address
end
