class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    if params[:search]
    else
      @courses = Course.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  #increment number of visits to the course page
  def show
    @course = Course.find(params[:id])
    @course.num_visits += 1
    @course.save

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  def booking 
    @course = Course.find(params[:id])
    authorize! :booking, @course, :message => "Please login to book a place."
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  #def new
  #  @course = Course.new

  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.json { render json: @course }
  #  end
  #end

  # GET /courses/1/edit
  # update time date of date_update_at
  #def edit
  #  @course = Course.find(params[:id])
  #  @course.date_update_at = Time.now
  #  @course.save
  #end

  # POST /courses
  # POST /courses.json
  #def create
  #  @course = Course.new(params[:course])

  #  respond_to do |format|
  #    if @course.save
  #      format.html { redirect_to @course, notice: 'Course was successfully created.' }
  #      format.json { render json: @course, status: :created, location: @course }
  #    else
  #      format.html { render action: "new" }
  #      format.json { render json: @course.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # PUT /courses/1
  # PUT /courses/1.json
  #def update
  #  @course = Course.find(params[:id])

  #  respond_to do |format|
  #    if @course.update_attributes(params[:course])
  #      format.html { redirect_to @course, notice: 'Course was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @course.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /courses/1
  # DELETE /courses/1.json
  #def destroy
  #  @course = Course.find(params[:id])
  # @course.destroy

  #  respond_to do |format|
  #    format.html { redirect_to courses_url }
  #    format.json { head :no_content }
  # end
  #end
end
