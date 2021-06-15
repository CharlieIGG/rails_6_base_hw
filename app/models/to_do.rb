class ToDo < ApplicationRecord
  after_create_commit { broadcast_prepend_to 'to_dos' }
end
