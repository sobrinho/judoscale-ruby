# frozen_string_literal: true

require "judoscale/request_middleware"
require "judoscale/logger"

module Judoscale
  class Railtie < Rails::Railtie
    include Logger

    initializer "judoscale.request_middleware" do |app|
      logger.info "Preparing request middleware"
      app.middleware.insert_before Rack::Runtime, RequestMiddleware
    end
  end
end
