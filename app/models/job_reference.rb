class JobReference < ApplicationRecord
  belongs_to :job
  belongs_to :job_sourceable, polymorphic: true
end
