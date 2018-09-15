class Student < ApplicationRecord
    belongs_to :cohort, dependent: :destroy
end
