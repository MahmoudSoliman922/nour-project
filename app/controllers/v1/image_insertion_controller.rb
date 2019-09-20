# frozen_string_literal: true

require_relative '../../serializers/application_serializer'

module V1
  # applications class
  class ImageInsertionController < ApplicationController
    def index
      pp params
    end

    def create
      uploaded_io = params[:file]
      File.open('public/'+uploaded_io.original_filename, 'wb') do |file|
        file.write(uploaded_io.read)
      end
    end
  end
end
