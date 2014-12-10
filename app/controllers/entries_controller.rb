class EntriesController < ApplicationController

  def index
    @entries = current_user.entries
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

  def update
    @communication_types = CommunicationType.all
    @entry = Entry.find_by(id: params[:id])

    @entry.update(entry_params)

    if @entry.save
      redirect_to entry_path(@entry)
    else
      render :update
    end
  end

  # need to add delete

  private

  def entry_params
    params.require(:entry).permit(
      :date,
      :contact_name,
      :organization_name,
      :notes,
      :communication_type_id,
      :user_id
      )
  end

end
