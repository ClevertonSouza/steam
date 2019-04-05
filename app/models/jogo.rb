class Jogo < ApplicationRecord
    belongs_to :classificacao
    has_many :bibliotecas_de_usuario, class_name: "Biblioteca"

    validates :titulo, :desenvolvedora, :descricao, :lancamento, presence: true
    validates :titulo, :descricao, uniqueness: true 


    scope :por_titulo, lambda { |titulo = nill|
    if titulo
        where(titulo: titulo)
    end 
}

end