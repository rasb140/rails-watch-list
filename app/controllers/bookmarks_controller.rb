class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.where(bookmark_params)
  end

  def new
    @bookmarks = Bookmark.new
  end

  def edit
  end

  def update
    @bookmark.update!(bookmark_params)
  end

  def show
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    bookmark.save!
    redirect_to bookmarks_path
  end

  def destroy
    @bookmark.destroy
    redirect_to list_bookmarks_path(params[:list_id])
  end

  private

  def bookmark_params
    params.permit(:list_id, :movie_id)
  end

  def set_bookmark
    @bookmark = Bookmark.find_by(bookmark_params)
  end
end
