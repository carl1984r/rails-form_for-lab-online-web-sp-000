class SchoolClassesController < ApplicationController


  def show
		@sc = SchoolClass.find(params[:id])
	end

  def edit
	  @sc = SchoolClass.find(params[:id])
	end

  def new
    @sc = SchoolClass.new
  end

  def create
	  @sc = SchoolClass.new(school_class_params(:title, :room_number))
	  @sc.save
	  redirect_to school_class_path(@sc)
	end

  def update
	  @sc = Post.find(params[:id])
	  @sc.update(school_class_params(:title))
	  redirect_to school_class_path(@sc)
	end

  private

    def school_class_params(*args)
      params.require(:school_class).permit(*args)
    end


end
