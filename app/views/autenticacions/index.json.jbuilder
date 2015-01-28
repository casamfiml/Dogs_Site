json.array!(@autenticacions) do |autenticacion|
  json.extract! autenticacion, :id, :user, :crypted_password, :email
  json.url autenticacion_url(autenticacion, format: :json)
end
