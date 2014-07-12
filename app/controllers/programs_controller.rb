class ProgramsController < ApplicationController
  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
      if @program.save
        redirect_to @program
      else
        render 'new'
      end
  end

  def update
    @program = Program.find(params[:id])

    if @program.update(program_params)
      redirect_to @program
    else 
      render 'edit'
    end
  end

  def edit
    @program = Program.find(params[:id])
  end

  def destroy
  end

  def index
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end
end

  private
  def program_params
    params.require(:program).permit(:gender, :min_age, :total_homeless_years, :total_homeless_month, :total_homeless_housed_again, :chronic, :money_regular_basis, :drug_alcohol_abuse, :drug_alcohol_treatment, :alcohol_daily_last_month, :hosp_emotional_nerves, :mh_professional_appnt, :mht_against_will, :trauma_not_saught_treatment, :dual_diagnosis, :mobility_limits, :citizenship_status, :military, :jail, :prison, :ci_incarceration, :hiv_aids)
    
  end