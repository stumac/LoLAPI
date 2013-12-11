module Configuration
  DEFAULT_API_KEY   = 'API KEY HERE'

  VALID_OPTIONS_KEYS    = [:api_key].freeze

  attr_accessor *VALID_OPTIONS_KEYS

  def reset
    self.api_key    = DEFAULT_API_KEY
  end

  def configure
    yield self
  end
end
