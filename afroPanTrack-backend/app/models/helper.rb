class Helper < ApplicationRecord

    belongs_to :help, class_name: "Helper", optional: true
    belongs_to :user
end
