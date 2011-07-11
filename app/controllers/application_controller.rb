class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_uri

  def check_uri
    puts request.protocol
    puts request.host_with_port
    puts request.host
    puts request.request_uri
    redirect_to request.protocol + request.host_with_port[4..-1] + request.request_uri if /^www/.match(request.host)
  end

end