# == Schema Information
#
# Table name: links
#
#  id             :integer          not null, primary key
#  url_input      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  shortened_link :string
#  user_id        :integer
#  visits         :integer
#  enabled        :boolean          default(TRUE)
#  erased         :boolean
#

module LinksHelper

end
