class SolutionsController < ApplicationController
  # GET /solutions
  # GET /solutions.json
  def index
    @solutions = Solution.all
    @error = Error.find_by_id(:error_id)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solutions }
    end
  end

  # GET /solutions/1
  # GET /solutions/1.json
  def show
    @solution = Solution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solution }
    end
  end

  # GET /solutions/new
  # GET /solutions/new.json
  def new
    @solution = Solution.new
    @error = Error.find(params[:error_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @solution }
    end
  end

  # GET /solutions/1/edit
  def edit
    @solution = Solution.find(params[:id])
    @error = Error.find_by_id(params[:error_id])
  end

  # POST /solutions
  # POST /solutions.json
  def create
    @solution = Solution.new(params[:solution])
    @error = Error.find_by_id(params[:error_id])
    @solution.error_id = @error.id
    respond_to do |format|
      if @solution.save
        format.html { redirect_to error_path(@error), notice: 'Solution was successfully created.' }
        format.json { render json: @solution, status: :created, location: @solution }
      else
        format.html { render action: "new" }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solutions/1
  # PUT /solutions/1.json
  def update
    @solution = Solution.find(params[:id])
    @error = Error.find_by_id(params[:error_id])
    respond_to do |format|
      if @solution.update_attributes(params[:solution])
        format.html { redirect_to error_path(@error), notice: 'Solution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solutions/1
  # DELETE /solutions/1.json
  def destroy
    @solution = Solution.find(params[:id])
    @solution.destroy
    @error = Error.find_by_id(params[:error_id])
    respond_to do |format|
      format.html { redirect_to error_path(@error) }
      format.json { head :no_content }
    end
  end
end
