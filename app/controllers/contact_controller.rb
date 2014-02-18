class ContactController < ApplicationController
	 def new
    	@message = Message.new
  	end

    def create()       
      @message = Message.new({nombre: params[:nombre],email: params[:email],asunto: params[:asunto],comentarios: params[:comentarios]})      
  		NotificacionMail.new_message(@message).deliver
      respond_to do |format|
        format.json { render json: @message, msg: "Ok" }        
      end      	
  	end

end
