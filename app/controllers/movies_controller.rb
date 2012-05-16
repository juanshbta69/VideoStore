class MoviesController < ApplicationController
  before_filter :authenticate
  before_filter(:get_category)
  # GET /movies
  # GET /movies.json
  def index
    @movies = @category.movies.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies }
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = @category.movies.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/new
  # GET /movies/new.json
  def new
    @movie = @category.movies.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/1/edit
  def edit
    @movie = @category.movies.find(params[:id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = @category.movies.new(params[:movie])

    respond_to do |format|
      if @movie.save
        flash[:notice] = 'Movie was successfully created.'
        format.html { redirect_to(category_movie_url(@category, @movie)) }#, notice: 'Movie was successfully created.' }
        format.json { render json: @movie, status: :created, location: @movie }
      else
        format.html { render action: "new" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.json
  def update
    @movie = @category.movies.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        flash[:notice] = 'Movie was successfully updated.'
        format.html { redirect_to(category_movie_url(@category, @movie)) }#, notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie = @category.movies.find(params[:id])
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to(category_movies_url(@category)) }
      format.json { head :no_content }
    end
  end
  
  def get_category
    @category = Category.find(params[:category_id])
  end
  
  def rent
    @movie = @category.movies.find(params[:id])
    @movie.users << @current_user
    @movie.update
  end
end
