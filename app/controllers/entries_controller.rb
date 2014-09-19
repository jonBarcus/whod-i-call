class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
    @communication_types = CommunicationType.all
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to("/")
    else
      render("/entries/new")
    end
  end

  def show
    @entry = Entry.find_by(id: params[:id])
    @com_type = CommunicationType.find_by(id: @entry.communication_type_id).name
  end

  def edit
    @communication_types = CommunicationType.all
    @entry = Entry.find_by(id: params[:id])
  end

  # need to add delete

  private

  def entry_params
    params.require(:entry).permit(
      :date,
      :contact_name,
      :organization_name,
      :notes,
      :communication_type_id
      )
  end

end
