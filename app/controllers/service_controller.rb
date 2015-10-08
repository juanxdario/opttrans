
class ServiceController < ApplicationController
 
  def municipios

  end
  def index

  end

  def fast_service
    @cities=City.all
    @states=State.all
    
  end
  def new
    @service=Service.new
  end


end
