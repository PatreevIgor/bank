require 'open-uri'
class ResultsPresenter

attr_reader :currency
  def initialize(params = {})
    @currency = params[:currency] ? params.require(:currency) : 'Доллар США'
    @currency_conversion = params[:currency_conversion] ? params.require(:currency_conversion) : ''
  end

include AmountDebts
include PrincipalAndInterestDebts
include ChangeDebts
include ChangesInPercentDebts
include TotalDebs
include CurrencyConversions
include ConversionTotalUsb

  def count_kurs
    dollar = ''
    doc = Nokogiri::HTML(open('http://www.tut.by/'))
    doc.css('ul li a span.green').each do |link|
      dollar += link.content
    end
    dollar = dollar.delete('$').to_i
  end



end
