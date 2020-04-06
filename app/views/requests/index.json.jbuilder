json.array! @requests do |request|
    json.id request.id
    json.status  request.status
    json.branch_id request.branch_id
    json.product_id request.product_id
    json.price request.price
    json.created_at request.created_at
    
  end
  