Before do |scenario|

    $driver.start_driver

end


After do |scenario|

    time = Time.new
	Dir.mkdir('report') unless Dir.exist?('report')

	sufix = ('Erro' if scenario.failed?) || 'Sucesso'
	name = scenario.name.tr(' ','_').downcase

	screenshot("report/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png")
    $driver.driver_quit
end


#HomeActivity_
