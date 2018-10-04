class ImagensController < ApplicationController

    #usamos un callback para no repetir la misma linea en cada metodo.

    before_action :enviar_imagen, only: [:show, :edit, :update, :destroy]

    def index
        @imagen=Imagen.all
    end    

def new
@imagen=Imagen.new
end

def create
#render plain: params[:imagen].inspect
@imagen = Imagen.new imagen_params
@imagen.save

redirect_to @imagen
end

def show
    
end    

def edit

end

def update
    @imagen.update imagen_params
    redirect_to @imagen
    
end

def destroy
    @imagen.destroy
    redirect_to imagens_path
    end

    def enviar_imagen
        @imagen = Imagen.find params[:id]
    end  

    private
def imagen_params
    params.require(:imagen).permit(:descripcion)
end

end
