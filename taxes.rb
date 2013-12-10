class TaxCalculation

  def initialize(citizen = {})
    @first = citizen.fetch(:first_name)
    @last = citizen.fetch(:last_name)
    @income = citizen.fetch(:annual_income).to_i
  end


  def liability
    @liability = sprintf('$%.2f', @income * 0.22)
    puts "#{@first} #{@last} has a tax liability of #{@liability}"
  end

end

citizens = [{
    first_name: 'Johnny',
    last_name: 'Smith',
    annual_income: 120000
  },
  {
    first_name: 'Liz',
    last_name: 'Lemon',
    annual_income: 95000
  },
  {
    first_name: 'Jane',
    last_name: 'Doe',
    annual_income: 140000
  },
  {
    first_name: 'Mike',
    last_name: 'Orsillio',
    annual_income: 40000
  }
]

citizens.each {|citizen| TaxCalculation.new(citizen).liability}



