class Teacher < ApplicationRecord
    has_many :cohorts , :dependent => :nullify
    validates_inclusion_of :age, :in => 1..150
    validates :salary, numericality: { :greater_than => 0 }
     def concat_name
        "#{fname} #{lname}"
     end
end
