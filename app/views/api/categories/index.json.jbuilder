json.array! @category.each do |category|
  json.partial! "category.json.jbuilder", category: category
end