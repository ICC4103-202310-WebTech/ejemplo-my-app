# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  count      :integer          default(0), not null
#
class Author < ApplicationRecord
    has_many :books

    validates :name, presence: true

    before_validation :titleize_name

    def titleize_name
        self.name = self.name.titleize
    end

    def update_count_by_1
        self.update count: self.count + 1
    end
end
