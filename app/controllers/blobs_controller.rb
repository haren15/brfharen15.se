class BlobsController < ApplicationController
  def edit
    @blob = Blob.find(params[:id])

    render 'edit', layout: nil
  end

  def update
    @blob = Blob.find(params[:id])
    @blob.update_attributes(blob_params)

    head :ok
  end


  private

  def blob_params
    params.require(:blob).permit(:contents)
  end
end
