class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  # configure this after the routes is finalized
  # skip_before_action :authenticate_user!, only: :home

  def home
  end
end
