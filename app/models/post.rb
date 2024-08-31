class Post < ApplicationRecord
  include PgSearch::Model
  extend FriendlyId

  # Validações
  validates :title, :author, :body, presence: true

  # Relações
  has_many :comments, dependent: :destroy

  # FriendlyId para slugs
  friendly_id :title, use: :slugged

  # Configuração do pg_search para busca de um título do post ou o conteúdo do mesmo
  pg_search_scope :search,
    against: %i[title author body],
    associated_against: {
      comments: %i[body]
    },
    using: {
      tsearch: { prefix: true }
    }

  # Método para determinar quando regenerar o slug
  def should_generate_new_friendly_id?
    title_changed?
  end
end
