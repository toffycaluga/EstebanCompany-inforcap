class HomeController < ApplicationController
  def index
  end
  def dashboard_redirect
    if user_signed_in?
      
        redirect_to  job_offers_path
     
  else
    # Si el usuario no ha iniciado sesión, redirigirlo a la página de inicio de sesión.
    redirect_to home_index_path
  end
end

end
