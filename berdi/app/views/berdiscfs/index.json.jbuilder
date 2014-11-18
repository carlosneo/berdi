json.array!(@berdiscfs) do |berdiscf|
  json.extract! berdiscf, :id
  json.url berdiscf_url(berdiscf, format: :json)
end
