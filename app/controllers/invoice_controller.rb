class InvoiceController < ApplicationController

  def create
    @invoice = Invoice.new
  end

  def show
    @invoice = Invoice.find_by token: params[:token]
  end

end
