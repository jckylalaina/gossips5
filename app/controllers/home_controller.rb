class HomeController < ApplicationController
  def index
  	@a = Gossip.all
  end	
  
  def team
  	@id = params[:id]
  end

  def contact
  end
  
  def url
  @params = params[:id]
  end	

  def Gossip_view
    @a = Gossip.all
    @id = "#{params[:id]}"
    @gossip = "Gossip_#{params[:id]}"
  end 
end
