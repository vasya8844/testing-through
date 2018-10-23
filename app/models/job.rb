class Job < ApplicationRecord
  has_one :job_reference_volume, class_name: 'JobReference', foreign_type: 'Volume'
  has_one :volume, through: :job_reference_volume, source: :job_sourceable, source_type: 'Volume'

  has_one :job_reference_project, class_name: 'JobReference', foreign_type: 'Project'
  has_one :project, through: :job_reference_project, source: :job_sourceable, source_type: 'Project'
end
