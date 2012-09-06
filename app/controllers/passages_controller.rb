class PassagesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @passages = Passage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @passages }
    end
  end

  def show
    @passage = Passage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @passage }
    end
  end

  def new
    @passage = Passage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @passage }
    end
  end

  def edit
    @passage = Passage.find(params[:id])
  end

  def create
    @passage = Passage.new(params[:passage])

    respond_to do |format|
      if @passage.save
        format.html { redirect_to @passage, notice: 'Passage was successfully created.' }
        format.json { render json: @passage, status: :created, location: @passage }
      else
        format.html { render action: "new" }
        format.json { render json: @passage.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @passage = Passage.find(params[:id])

    respond_to do |format|
      if @passage.update_attributes(params[:passage])
        format.html { redirect_to @passage, notice: 'Passage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @passage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @passage = Passage.find(params[:id])
    @passage.destroy

    respond_to do |format|
      format.html { redirect_to passages_url }
      format.json { head :no_content }
    end
  end

  def add_to_vocab_list
    current_user.vocab_list[params[:vocab_word]] = params[:vocab_def]
    current_user.save
    redirect_to :back, :notice => "Word successfully saved."
  end

  def remove_from_vocab_list
    current_user.vocab_list.delete params[:vocab_word]
    current_user.save
    redirect_to :back, :notice => "Word removed."
  end

end
