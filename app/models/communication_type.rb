# == Schema Information
#
# Table name: communication_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class CommunicationType < ActiveRecord::Base
  belongs_to :entry
end
