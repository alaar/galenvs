class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :support, :about, :soon]

  def home
  end

  def about
  end

  def support
  end

  def soon
  end

end
