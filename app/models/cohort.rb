class Cohort < ApplicationRecord
    has_many :students, :dependent => :nullify
    belongs_to :teacher
end
