class ProduceOrdersController < ApplicationController
  before_action :set_produce_order, only: [:show, :edit, :update, :destroy]

  # GET /produce_orders
  def index
    @produce_orders = ProduceOrder.all
  end

  # GET /produce_orders/1
  def show
  end

  # GET /produce_orders/new
  def new
    @produce_order = ProduceOrder.new
  end

  # GET /produce_orders/1/edit
  def edit
  end

  # POST /produce_orders
  def create
    @produce_order = ProduceOrder.new(produce_order_params)

    if @produce_order.save
      redirect_to @produce_order, notice: 'Produce order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /produce_orders/1
  def update
    if @produce_order.update(produce_order_params)
      redirect_to @produce_order, notice: 'Produce order was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /produce_orders/1
  def destroy
    @produce_order.destroy
    redirect_to produce_orders_url, notice: 'Produce order was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produce_order
      @produce_order = ProduceOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def produce_order_params
      params.fetch(:produce_order, {})
    end
end
