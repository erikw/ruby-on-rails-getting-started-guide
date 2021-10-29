# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @article = Item.find(params[:id])
  end
end
