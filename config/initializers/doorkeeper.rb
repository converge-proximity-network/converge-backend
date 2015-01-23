Doorkeeper.configure do
  orm :active_record

  # This block will be called to check whether the resource owner is authenticated or not.
  resource_owner_authenticator do
    current_user || warden.authenticate!(:scope => :user)
  end

  default_scopes  :public
  optional_scopes :'view:users', :'modify:users', :'view:applications', :'modify:applications'

  # Specify what grant flows are enabled in array of Strings. The valid
  # strings and the flows they enable are:
  #
  # "authorization_code" => Authorization Code Grant Flow
  # "implicit"           => Implicit Grant Flow
  # "password"           => Resource Owner Password Credentials Grant Flow
  # "client_credentials" => Client Credentials Grant Flow
  #
  # If not specified, Doorkeeper enables authorization_code and
  # client_credentials.
  #
  # implicit and password grant flows have risks that you should understand
  # before enabling:
  #   http://tools.ietf.org/html/rfc6819#section-4.4.2
  #   http://tools.ietf.org/html/rfc6819#section-4.4.3
  #
  # grant_flows %w(authorization_code client_credentials)

  realm 'Converge'

  wildcard_redirect_uri true
end
