class PokemonsController < ApplicationController

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to :controller => 'trainers', :action => 'show', id: current_trainer.id
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to :controller => 'pokemons', :action => 'new'
		end
	end


	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

	def capture
		@current_poke = Pokemon.find(params[:id])
		@current_poke.trainer_id = current_trainer.id
		@current_poke.save
		redirect_to :root
	end

	def damage
		@damage_poke = Pokemon.find(params[:id])
		@damage_poke.health = @damage_poke.health - 10
		if @damage_poke.health <= 0
			@damage_poke.destroy
		else
			@damage_poke.save
		end
		redirect_to :controller => 'trainers', :action => 'show', id: @damage_poke.trainer_id
	end
end
