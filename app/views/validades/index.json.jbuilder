json.array!(@validades) do |validade|
  json.extract! validade, :id, :user_id, :produto_id, :validade
  json.url validade_url(validade, format: :json)
end
