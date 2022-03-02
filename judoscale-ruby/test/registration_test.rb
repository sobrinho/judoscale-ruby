# frozen_string_literal: true

require "test_helper"

describe Judoscale do
  it "registers itself as an adapter with information to be registered with the Judoscale API" do
    _(::Judoscale.adapters.map(&:identifier)).must_include :"judoscale-ruby"

    registration = ::Judoscale::Registration.new(Judoscale.adapters, Judoscale::Config.instance)
    _(registration.as_json[:adapters]).must_include(:"judoscale-ruby")
  end
end
