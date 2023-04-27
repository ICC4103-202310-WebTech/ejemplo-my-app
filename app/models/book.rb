# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string
#  author_id    :bigint
#  isbn         :string           not null
#
class Book < ApplicationRecord
    belongs_to :author

    validates :title, presence: true
    # validates :isbn, presence: true
    # validates :isbn, length: { is: 13 }
    validates :isbn, presence: true, length: { is: 13 }, uniqueness: true

    after_create :update_author_book_count
    after_validation :titleize_title

    scope :published_before, ->(published_date) { where('published_at < ?', published_date) }
    scope :title_like, -> (name) {where("title LIKE '%#{name}%'")}

    def titleize_title
        self.title = self.title.titleize
    end

    def update_author_book_count
        self.author.update_count_by_1
    end
end
