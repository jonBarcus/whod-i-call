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
  end

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
