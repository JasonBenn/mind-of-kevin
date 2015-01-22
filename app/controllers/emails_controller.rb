class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def admin
    Rails.logger.debug 'PARAMS: ' + params.inspect
    Email.destroy_all    
    binding.remote_pry
    head :ok
  end

  def guest
    Rails.logger.debug 'PARAMS: ' + params.inspect
    Email.create text: params['sender']
    head :ok
  end
end
