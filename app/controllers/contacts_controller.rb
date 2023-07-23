class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ new create ]
  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts or /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, success: { title: 'Solicitud enviada', body: "Recibiras una respuesta lo antes posible" } }
      else
        format.html { redirect_to root_path, error: { title: 'Error', body: "No se ha podido enviar tu consulta" } }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact)
            .permit(:name, :phone, :email, :title, :body,
                    data: [:location, :date_event, :main_service, :extra_services, :opened])
    end
end
