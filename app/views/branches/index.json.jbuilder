json.array! @branches do |branch|
  json.id branch.id
  json.branch_name  branch.branch_name
  json.location branch.location
  json.email branch.email
  json.contact branch.contact
  json.user_id branch.user_id
  
end
