class ApiController < ApplicationController
  def level1
    render json: { status: 'success', data: Troux.new.level1 }
  end

  def level3
    render json: { status: 'success', data: Troux.new.level3 }
  end
end
