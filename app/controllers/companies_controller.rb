class CompaniesController < ApplicationController
    def show
        @company = Company.find(params[:id])
    end
    
    def edit
        @company = Company.find(params[:id])
    end
    
    def update
        @company.update(company_params)
    end
    private
    def company_params
    params.require(:company).permit(:company_name, :CEO_name, :revenue,
                                    :profit, :Address)
    end
end
