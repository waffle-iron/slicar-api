class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }

  include Authenticable

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    return api_error(status: 404, errors: 'Not found')
  end

end
