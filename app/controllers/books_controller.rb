class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.author_id = 1
    respond_to do |format|
      if @book.save
        format.html { redirect_to book_path(@book), notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def book_params
      params.require(:book).permit(:title, :publication_year, :synopsis, :author_id)
    end

end
