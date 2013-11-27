class EntriesController < ApplicationController

  def index
    @entries = Entry.latest
  end

end
