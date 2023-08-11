class JobAplicationsController < ApplicationController
    def new
        @job_application = JobApplication.new
    end
  
    def create

      @job_offer = JobOffer.find(params[:job_offer_id])

      if @job_offer.job_applications.exists?(user_id: current_user.id)
          redirect_to @job_offer, alert: 'Ya has aplicado a este trabajo.'
      else
          
        @job_application = @job_offer.job_applications.build( user_id: current_user.id)
          

          # Puedes agregar lógica adicional aquí si es necesario

          if @job_application.save
              redirect_to @job_offer, notice: 'Solicitud de trabajo enviada exitosamente.'
          else
            redirect_to request.fullpath, alert: 'No se pudo crear el comentario.'
          end

      end
      
    end

    def index
      
        @applied_jobs = current_user.job_applications.includes(:job_offer)
      

    end

    private

    def comment_params
      params.require(:job_application).permit(:content,:user_id)
    end
end
