class ClientsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  after_action :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = "http://localhost:8080"
    headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  end

  def index
    #@clients = Client.all
    #respond_with(@clients)
    render json: Client.all
  end

  def show
    respond_with(@client)
  end

  def new
    @client = Client.new
    respond_with(@client)
  end

  def edit
  end

  # def create
  #   @client = Client.new(client_params)
  #   @client.save
  #   respond_with(@client)
  # end

  def create
    @client = Client.new(client_params)
    respond_to do |format|
      if @client.save
        flash[:notice] = 'Client was successfully created.'
        format.html { redirect_to(@client) }
        format.json { render json: @client }
      else
        format.html { render action: "new" }
        format.json { render json: @client }
      end
    end
  end


  def update
    @client.update(client_params)
    respond_with(@client)
  end

  def destroy
    @client.destroy
    respond_with(@client)
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:name, :address, :phone, :website, :twitter, :facebook, :background)
    end
end
