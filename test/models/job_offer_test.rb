# == Schema Information
#
# Table name: job_offers
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class JobOfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
