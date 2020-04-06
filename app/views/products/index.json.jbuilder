json.array! @products do |product|
    json.id   product.id
    json.item  product.item
    json.price product.price
    json.image product.image

  end
  