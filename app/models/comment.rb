class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  #added a scope code to select a specific group of data entries for best ratings
	scope :rating_desc, -> { order(rating: :desc) }
	scope :rating_asc, ->{ order(rating: :asc) }

	validates :body, presence: true
  	validates :user, presence: true
  	validates :product, presence: true
  	validates :rating, numericality: { only_integer: true }


  #this block of code will reload the page if data is invalid
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
end
