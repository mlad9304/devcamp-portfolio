class Skill < ApplicationRecord
    validates_presense_of :title, :percent_utilized
end
