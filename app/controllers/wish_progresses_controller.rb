class WishProgressesController < ApplicationController
  before_action :set_wish_progress, only: [:show, :edit, :update, :destroy]

  # GET /wish_progresses
  # GET /wish_progresses.json
  def index
    @wish_progresses = WishProgress.all
  end

  # GET /wish_progresses/1
  # GET /wish_progresses/1.json
  def show
  end

  # GET /wish_progresses/new
  def new
    @wish_progress = WishProgress.new
  end

  # GET /wish_progresses/1/edit
  def edit
  end

  # POST /wish_progresses
  # POST /wish_progresses.json
  def create
    # wish = Wish.find(params[:wish][:wish_id])
    @wish_progress = WishProgress.new(wish_progress_params)
    # @wish_progress.wish = wish
    respond_to do |format|
      if @wish_progress.save
        format.html { redirect_to @wish_progress.wish, notice: 'Wish progress was successfully created.' }
        format.json { render :show, status: :created, location: @wish_progress }
      else
        format.html { render :new }
        format.json { render json: @wish_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wish_progresses/1
  # PATCH/PUT /wish_progresses/1.json
  def update
    respond_to do |format|
      if @wish_progress.update(wish_progress_params)
        



        format.html { redirect_to @wish_progress, notice: 'Wish progress was successfully updated.' }
        format.json { render :show, status: :ok, location: @wish_progress }
      else
        format.html { render :edit }
        format.json { render json: @wish_progress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wish_progresses/1
  # DELETE /wish_progresses/1.json
  def destroy
    @wish_progress.destroy
    respond_to do |format|
      format.html { redirect_to wish_progresses_url, notice: 'Wish progress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish_progress
      @wish_progress = WishProgress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wish_progress_params
      params.require(:wish_progress).permit(:description, :dataRegistro, :wish_id)
    end
end
