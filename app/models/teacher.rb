class Teacher < ApplicationRecord
    has_many :cohorts , :dependent => :nullify
end
