class Post < ApplicationRecord
  # @post.comments 一つの記事に複数コメント
  has_many :comments,dependent: :destroy
  # タイトルの中身が空ならエラー
  validates :title, presence: true, length: { minimum: 3, message: 'Error' }
  # bodyの中身が空ならエラー
  validates :body, presence: true
end
