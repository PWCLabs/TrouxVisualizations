class Troux
  include HTTParty
  format :json

  def initialize(username = nil, password = nil)
    @auth = {
      username: username || 'troux',
      password: password || 'troux2014'
    }
  end

  def level1
    url = 'http://itgs109.troux.com:8090/tip/rest/v1/model/Capability?select=name,description,parentCapability.name,childCapabilities.name&orderBy=parentCapability.name&limit=10000'
    self.class.get url, basic_auth: @auth
  end

  def level3
    url = 'http://itgs109.troux.com:8090/tip/rest/v1/model/Capability/06D71EC0-1D9A-4EC0-875E-CDC5738C214E?select=name,description,childCapabilities.name&limit=1000'
    self.class.get url, basic_auth: @auth
  end
end
