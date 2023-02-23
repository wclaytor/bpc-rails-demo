class Author < ApplicationRecord

    has_many :books # rubocop:todo Rails/HasManyOrHasOneDependent

end
