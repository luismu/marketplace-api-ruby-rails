class ProductSerializer < ActiveModel::Serializer
  # cache key: 'post',expires_in: 3.hours
  attributes :id, :id, :title, :price, :published ,:user_id
  # has_one :user #this is the line
  #embed :ids
end
