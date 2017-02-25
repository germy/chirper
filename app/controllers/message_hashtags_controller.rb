class MessageHashtagsController < ApplicationController
  before_action :set_message_hashtag, only: [:show, :edit, :update, :destroy]

  # GET /message_hashtags
  # GET /message_hashtags.json
  def index
    @message_hashtags = MessageHashtag.all
  end

  # GET /message_hashtags/1
  # GET /message_hashtags/1.json
  def show
  end

  # GET /message_hashtags/new
  def new
    @message_hashtag = MessageHashtag.new
  end

  # GET /message_hashtags/1/edit
  def edit
  end

  # POST /message_hashtags
  # POST /message_hashtags.json
  def create
    @message_hashtag = MessageHashtag.new(message_hashtag_params)

    respond_to do |format|
      if @message_hashtag.save
        format.html { redirect_to @message_hashtag, notice: 'Message hashtag was successfully created.' }
        format.json { render :show, status: :created, location: @message_hashtag }
      else
        format.html { render :new }
        format.json { render json: @message_hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_hashtags/1
  # PATCH/PUT /message_hashtags/1.json
  def update
    respond_to do |format|
      if @message_hashtag.update(message_hashtag_params)
        format.html { redirect_to @message_hashtag, notice: 'Message hashtag was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_hashtag }
      else
        format.html { render :edit }
        format.json { render json: @message_hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_hashtags/1
  # DELETE /message_hashtags/1.json
  def destroy
    @message_hashtag.destroy
    respond_to do |format|
      format.html { redirect_to message_hashtags_url, notice: 'Message hashtag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_hashtag
      @message_hashtag = MessageHashtag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_hashtag_params
      params.require(:message_hashtag).permit(:message_id, :hash_id)
    end
end
