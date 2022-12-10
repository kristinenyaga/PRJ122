class ChampionSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :phone_no, :email, :linkedin_url, :github_url, :bio
  has_many :comments
end
