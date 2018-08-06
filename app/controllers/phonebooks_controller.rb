class PhonebooksController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @roles = User.roles

        if current_user.role == "admin"
            @phonebook = Phonebook.all
        else
            @phonebook = Phonebook.where(user_id: current_user.id).order(created_at: :desc)
        end
    end

    def new
        @phonebook = Phonebook.new
    end

    def edit
        @phonebook = Phonebook.find(params[:id])
    end

    def create
        @phonebook = Phonebook.new(phonebook_params)
        
        respond_to do |format|
            @errorName = []
            @errorNumber = []
            if @phonebook.save
                format.js
                redirect_to phonebooks_path
            else
                format.js
                @phonebook.errors.any?
                if (@phonebook.errors["name"] != nil)
                    @errorName.push(@phonebook.errors["name"][0])
                end
                if (@phonebook.errors["number"] != nil)
                    @errorNumber.push(@phonebook.errors["number"][0])
                end
            end
        end
    end

    def update
        @phonebook = Phonebook.find(params[:id])
        # if @phonebook.update(phonebook_params)
            
        #     redirect_to phonebooks_path
        # else
        #     render 'edit'
        # end

        respond_to do |format|
            @errorName = []
            @errorNumber = []
            if @phonebook.update(phonebook_params)
                #format.html { redirect_to phonebooks_path }
                format.js { redirect_to phonebooks_path }
            else
                format.js
                @phonebook.errors.any?
                if (@phonebook.errors["name"] != nil)
                    @errorName.push(@phonebook.errors["name"][0])
                end
                if (@phonebook.errors["number"] != nil)
                    @errorNumber.push(@phonebook.errors["number"][0])
                end
                #render 'edit'
            end
        end
    end

    def show
        @phonebook = Phonebook.find(params[:id])
    end

    def destroy
        @phonebook = Phonebook.find(params[:id])
        @phonebook.destroy
     
        redirect_to phonebooks_path
    end

    private
    def phonebook_params
        params.require(:phonebook).permit(:user_id, :name, :number)
    end
end
