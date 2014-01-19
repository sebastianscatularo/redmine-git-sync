class GitsynchronizeController < ApplicationController
  unloadable
  def sync

    command = ENV['SYNC_COMMAND']
    system(command)

    respond_to do |format|
      format.html { render :inline => '{"sync":"ok"}'}
      format.json { render :inline => '{"sync":"ok"}' }
    end
  end

  def repo
    sync_cmd = ENV['SYNC_COMMAND']
    repo_name = params[:repo]
    system sync_cmd, repo_name

    respond_to do |format|
      format.html { render :inline => '{"OK"}' }
      format.json { render :inline => '{"OK"}' }
    end
  end
end
