class Api::V1::ApiController < ActionController::API

  include DeviseTokenAuth::Concerns::SetUserByToken
  include Response
  include ExceptionHandler

end
