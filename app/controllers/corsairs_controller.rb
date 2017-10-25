class CorsairsController < ApplicationController
	def new
		@corsair=Corsair.new
	end
 

def create
  @corsair = Corsair.new(corsair_params)
  	if @corsair.save
  		redirect_to @corsair
  	else 
  		render 'new'
end 
end

	def show
  @corsair = Corsair.find(params[:id])
end

def edit 
    @corsair = Corsair.find(params[:id])
  end

  def update 
    @corsair = Corsair.find(params[:id])
    if @corsair.update(corsair_params)
      redirect_to @corsairir
      else 
      render 'edit'
 end
end

private
   def corsair_params
    params.require(:corsair).permit(:first_name, :age)
end

end
