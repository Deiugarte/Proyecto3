module ExceptionHandler

  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |error|
      json_response({ error: error.message }, 404)
    end

    rescue_from ActiveRecord::RecordInvalid do |error|
      json_response({ error: error.message }, 422)
    end

    rescue_from ActionController::ParameterMissing do |error|
      json_response({ error: error.message }, 400)
    end
  end

end
