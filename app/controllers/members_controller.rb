class MembersController < ApplicationController

    def index
      @members = Member.all
    end

    def create
      @member = Member.new(member_params)

      if @member.valid?
        @member.save
        redirect_to root_path
      else
        render :new
      end
    end


    private

    def member_params
      params.require(:member).permit(:name, :image)
    end


end
