# frozen_string_literal: true
require 'base64'

class V1::ImageBaseInsertionController < ApplicationController
  def index
    pp params
  end

  def create
    uploaded_io = params[:file]
    encoded_data = Base64.decode64(params[:file])
    pp '========================================================='
    pp params[:file]
    pp '========================================================='

      File.open("public/base64file", "w") {|f| f.write encoded_data}

    #   File.open('public/'+uploaded_io.original_filename, 'wb') do |file|
    #     file.write(uploaded_io.read)
    #   end
  end
end
