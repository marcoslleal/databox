class Databox::Configuration
  attr_accessor \
    :key,
    :url,
    :token

  def initialize
    @url ||= ENV["DATABOX_URL"] || 'https://api.databox.com'
    @key ||= ENV["DATABOX_KEY"]
    @token ||= ENV["DATABOX_TOKEN"]
  end

end
