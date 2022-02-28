class CompaniesController < ApplicationController
    before_action :set_company, only: [:show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @company = current_user.company.build
        @user = current_user
    end
    
    def edit
    end
    
    def create
        @company = current_user.company.build(company_params)
        @company.users << current_user    
    end
    
    def update
        if @company.update(company_params)
            redirect_to @company
        else
            render 'edit'
        end
    end
    
    private
        def set_company
            @company = Company.find(params[:id])
        end
        
        def company_params
            params.require(:company).permit(:company_name, :ceo_name, :company_revenue,
                                            :company_profit, :company_address)
        end
end
