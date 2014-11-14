# == Schema Information
#
# Table name: entries
#
#  id                    :integer          not null, primary key
#  date                  :date
#  contact_name          :string(255)
#  organization_name     :string(255)
#  notes                 :text
#  communication_type_id :integer
#  created_at            :datetime
#  updated_at            :datetime
#

class Entry < ActiveRecord::Base
  has_one :communication_type
end
