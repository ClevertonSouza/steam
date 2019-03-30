class Classificacao < ApplicationRecord
    has_many :jogos

    validates :nome, :idade_minima, presence: true
    validates :nome, uniqueness: true 
    validates :idade_minima, numericality: {geater_than_or_equal_to: 0, less_than_or_equal_to: 18}
end
