class Connection < ApplicationRecord

  extend FriendlyId
  friendly_id :con_friendly_id, use: :slugged

end
