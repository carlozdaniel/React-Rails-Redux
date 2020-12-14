class Api::V1::EmpresasController < ApplicationController
  def index
    @empresas = Empresa.all
    render json: @empresas, include: [:politica]
  end
  def show
    @empresas = Empresa.find(params[:id])
    render json: @empresas, include: [:politica]
  end
  def create
    @empresas = Empresas.new(params.require(:empresas).permit(:name, :description))
    if @empresas.save()
      render json: @empresas, stautus: :created
    else
      render json: @empresas.errors, status: :unprossable_entity
    end
  def update
    @empresas Empresa.fine(params[:id])
    if @empresas.update((params.require(:empresas).permit(:name, :description))
      render json: @empresas, stautus: :created
    else
      render json: @empresas.errors#, status: :unprossable_entity
    end
  end

  def destroy
    @empresas Empresa.fine(params[:id])
    @empresas.destroy
  end
end
