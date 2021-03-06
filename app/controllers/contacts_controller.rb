class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render 'contacts.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @contact = Contact.new(
    params[:first_name],
    params[:last_name],
    params[:email],
    params[:phone_number]
    )
    @contact.save
    render 'create.html.erb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    render 'update.html.erb'
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render 'destroy.html.erb'
  end
end
