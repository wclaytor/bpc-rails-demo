class Author < ApplicationRecord # rubocop:todo Style/Documentation
  has_many :books
end
