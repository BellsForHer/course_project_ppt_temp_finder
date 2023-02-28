class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def new
    @upload = Upload.all
  end

  def create
    @upload = Upload.new(upload_params)

    if @upload.save
      redirect_to uploads_path, notice: "the upload #{@upload.title} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_path, notice: "The resume #{@upload.name} has been deleted."
  end

  private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
end
