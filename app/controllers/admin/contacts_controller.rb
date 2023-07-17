class Admin::ContactsController < ApplicationController
  layout 'admin'
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1 or /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts or /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.client_email(@contact).deliver_later
        ContactMailer.admin_email(@contact).deliver_later
        format.html { redirect_to root_path, success: { title: 'Solicitud enviada', body: "Recibiras una respuesta lo antes posible" } }
      else
        format.html { redirect_to root_path, error: { title: 'Error', body: "No se ha podido enviar tu consulta" } }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to admin_contacts_url, notice: "Contact was successfully destroyed." }
      format.json { head :no_content }
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
                    data: [:location, :date_event, :main_service, :extra_services])
    end
end
