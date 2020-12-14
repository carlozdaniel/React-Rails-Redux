class Api::V1::EmpresasController < ApplicationController
  def index
    @empresas = Empresa.all
    render json: @empresas, include: [:politica]
  end
  def show
    @empresas = Empresa.find(params[:id])
    render json: @empresas, include: [:politica]
  end
  
end
