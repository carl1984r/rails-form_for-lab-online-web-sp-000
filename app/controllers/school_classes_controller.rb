class SchoolClassesController < ApplicationController


  def new
    @sc = SchoolClass.new
  end

  def create
	  @sc = SchoolClass.new(school_class_params(:title, :room_number))
	  @sc.save
	  redirect_to school_class_path(@sc)
	end

  private

    def school_class_params(*args)
      params.require(:school_class).permit(*args)
    end


end
