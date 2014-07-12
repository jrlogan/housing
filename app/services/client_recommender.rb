class ClientRecommender
  # 1. Looks at the apartment.programs
  # 2. Selects all clients that are eligible for the program

  # Returns array of clients that are eligible for funding in the apartment
  def self.get_qualifying_clients(apartment)
  	eligible = []
  	clients = Client.all
  	eligible = apartment.programs
  	eligible.each_with_index do |program, i|
  		clients.each do |client|
  			if program.gender != client.gender
  				if program.gender != 'B'
  					clients.delete(client)
  					next
  				end
  			end

  			if program.min_age > client.calculate_age
  				clients.delete(client)
  				next
  			end

  			if program.chronic == 'Cannot' && client.chronic
  				clients.delete(client)
  				next
  			end

  			if program.drug_alcohol_abuse == 'Cannot' && client.drug_alcohol_abuse
  				clients.delete(client)
  				next
				elsif program.drug_alcohol_abuse == 'Must' && client.drug_alcohol_abuse == false
					clients.delete(client)
	  				next
  			end

  			if program.military == 'Cannot' && client.military 
  				clients.delete(client)
  				next
  			end

  			if program.jail == 'Cannot' && client.jail 
  				clients.delete(client)
  				next
  			end

  			if program.prison == 'Cannot' && client.prison 
  				clients.delete(client)
  				next
  			end

  			if program.ci_incarceration == 'Cannot' && client.ci_incarceration 
  				clients.delete(client)
  				next
  			end

  			if program.hiv_aids == 'Cannot' && client.hiv_aids 
  				clients.delete(client)
  				next
  			end

  			if program.drug_alcohol_treatment == 'Cannot' && client.drug_alcohol_treatment 
  				clients.delete(client)
  				next
  			end
  		end
  		eligibleClients.order('prescreen_total desc')
  	end
  end

  # 1. Takes output of get_qualifying_clients as possible tenants
  # 2. Takes criteria of apartment and apartment.housing_complex
  # 3. Looks at each client and sees which criteria s/he is, isn't or maybe is eligible

  # Returns a hash of clients and criteria on which they are eligible? Maybe
  def self.match_other_criteria(apartment)

  end
end