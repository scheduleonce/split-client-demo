class ToggleController < ApplicationController

  def check_toggle
    resp = RemoteToggle.on?(params[:toggle_name], {key: 'TEST'})
    render json: {toggle: resp ? 'ON' : 'OFF'}
  end
end