class RoutesController < ApplicationController
  require 'uri'
  require 'net/http'

  MAPS_API_KEY = Rails.application.credentials.dig(:google, :maps_api_key).freeze

  def create
    render json: { route: route }
  end

  private

  def route
    base_url = 'https://maps.googleapis.com/maps/api/directions/json?'
    url = "#{base_url}origin=#{uri_encode(params[:route][:origin])}&destination=#{uri_encode(params[:route][:destination])}&key=#{MAPS_API_KEY}"
    uri = URI(url)
    response = Net::HTTP.get_response(uri)

    JSON.parse(response.body, symbolize_names: true) if response.is_a?(Net::HTTPSuccess)
  end

  def uri_encode(str)
    URI.encode_www_form_component(str)
  end
end
