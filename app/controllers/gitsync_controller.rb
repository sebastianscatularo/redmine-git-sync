class GitSyncController < ApplicationController
  unloadable
  def sync

    command = ENV['SYNC_COMMAND']
    system(command)

    respond_to do |format|
      format.html { render :inline => '{"sync":"ok"}'}
      format.json { render :inline => '{"sync":"ok"}' }
    end
  end
end
