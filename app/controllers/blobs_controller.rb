class BlobsController < ApplicationController
  def new
    @blob = Blob.new(key: params[:key])

    render 'new', layout: nil
  end

  def edit
    @blob = Blob.find(params[:id])

    render 'edit', layout: nil
  end

  def update
    @blob = Blob.find(params[:id])

    if @blob.update_attributes(blob_params)
      head :ok
    else
      head :failure
    end
  end

  def create
    if Blob.create(blob_params)
      head :ok
    else
      head :failure
    end
  end


  private

  def blob_params
    params.require(:blob).permit(:key, :contents)
  end
end
