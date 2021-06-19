class ToDo < ApplicationRecord
  GENERAL_CHANNEL_NAME = 'to_dos'.freeze

  after_create_commit { broadcast_prepend_to GENERAL_CHANNEL_NAME }
  after_update_commit :handle_update
  after_destroy_commit { broadcast_remove_to GENERAL_CHANNEL_NAME }

  validates :title, presence: true

  def handle_update
    broadcast_remove_to GENERAL_CHANNEL_NAME
    return broadcast_append_to GENERAL_CHANNEL_NAME if self.done

    broadcast_prepend_to GENERAL_CHANNEL_NAME
  end
end
