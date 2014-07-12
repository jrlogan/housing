class ClientRecommender
  # 1. Looks at the apartment.programs
  # 2. Selects all clients that are eligible for the program

  # Returns array of clients that are eligible for funding in the apartment
  def self.get_qualifying_clients(apartment)
  	eligible = []
  	clients = Client.order('prescreen_total desc').all.to_a
  	eligible = apartment.programs
  	eligible.each do |program|
  		clients.each_with_index do |client, i|
  			if program.gender != client.gender
  				if program.gender != 'B'
  					clients.delete_at(i)
  					next
  				end
  			end

  			if program.min_age > client.calculate_age
  				clients.delete_at(i)
  				next
  			end

  			if program.chronic == 'Cannot' && client.chronic
  				clients.delete_at(i)
  				next
  			end

  			if program.drug_alcohol_abuse == 'Cannot' && client.drug_alcohol_abuse
  				clients.delete_at(i)
  				next
				elsif program.drug_alcohol_abuse == 'Must' && client.drug_alcohol_abuse == false
					clients.delete_at(i)
	  				next
  			end

  			if program.military == 'Cannot' && client.military
  				clients.delete_at(i)
  				next
  			end

  			if program.jail == 'Cannot' && client.jail
  				clients.delete_at(i)
  				next
  			end

  			if program.prison == 'Cannot' && client.prison
  				clients.delete_at(i)
  				next
  			end

  			if program.ci_incarceration == 'Cannot' && client.ci_incarceration
  				clients.delete_at(i)
  				next
  			end

  			if program.hiv_aids == 'Cannot' && client.hiv_aids
  				clients.delete_at(i)
  				next
  			end

  			if program.drug_alcohol_treatment == 'Cannot' && client.drug_alcohol_treatment
  				clients.delete_at(i)
  				next
  			end
  		end
  	end
    return clients
  end

  # 1. Takes output of get_qualifying_clients as possible tenants
  # 2. Takes criteria of apartment and apartment.housing_complex
  # 3. Looks at each client and sees which criteria s/he is, isn't or maybe is eligible

  # Returns a hash of clients and criteria on which they are eligible? Maybe
  def self.match_other_criteria(apartment)

  end
end