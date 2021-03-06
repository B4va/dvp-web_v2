class Admin::AdminController < ApplicationController

  before_action :authenticate_admin_admin!

  def dashboard
    @title = 'DVP Web | Dashboard'
    @contents = Content.order(id: :asc)
    @folios = Folio.order(order: :asc)
    @times = TimeCv.order(order: :asc)
  end
end
