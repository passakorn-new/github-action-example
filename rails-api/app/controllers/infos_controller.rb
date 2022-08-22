# frozen_string_literal: true

class InfosController < ApplicationController
  def index
    render json: Info.all
  end
end
