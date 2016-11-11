class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
  end


def create
      @story = Story.new(story_params)

      if @story.save
        redirect_to :back, notice: 'Your comment was successfully posted!'
      else
        redirect_to :back, notice: "Your comment wasn't posted!"
      end
    end

    private

    def story_params
      params.require(:story).permit(:title)
    end


end