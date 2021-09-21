class User < ApplicationRecord
    has_many :collections
    has_many :projects, through: :collections

end
