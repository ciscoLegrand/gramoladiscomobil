class Admin::ContactsController < ApplicationController
  layout 'admin'
  before_action :set_contact, only: %i[ show destroy ]

  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.by_date
    @contacts = @contacts.read if params[:read]
    @contacts = @contacts.unread if params[:unread]
  end

  # GET /contacts/1 or /contacts/1.json
  def show
    @contact.data.merge!(opened: params[:opened])
    @contact.save!
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
end
