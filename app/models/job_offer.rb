class JobOffer < ApplicationRecord

    # Relacones a muchos 
    has_many :job_aplications
end
