class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :content
end
