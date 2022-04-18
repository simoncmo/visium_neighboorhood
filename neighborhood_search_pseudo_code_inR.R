## Peudocode for Visium ST neighborhood search
source(queue.R) # Implementation of Queue data structure in R

# Run this function to Get Result
# neighorhood_spots = BFS_neighorhood(start_points, coordinate_df, max_distanc)

####################################################
## Main Search Algorithm
####################################################
BFS_neighorhood = function(start_points, coordinate_df, max_distance){
	# NOTE: start_points will be Named Vector with their "membership" information
	# 1. Intitialize follow values 
	spots_membership   = # 1. Result set: Store which "group" does the spot belongs to (Named vector)
	spots_visit_status = # 2. Visit flag: Store spots visited (Named vector)
	search_queue       = enqeueu(start_points) # 3. Queue: Store spots to visit. Started with All the starting/root spots
	
	# 2. Repeat till no more spots to visit
	while( search_queue Not Empty){
		# 1. Get the last item out from queue for investigation
		current_spot   = deqeueu(search_queue) 
		# 2. Get adjacent spots from current spot
		adjacent_spots = GetAdjacentSpots(current_spot, coordinate_df)	
		# 3. Adjacent_spots not Visited from spots_visit_status
		not_visited_spots = 

		# 4. Loop through All spots that are adjacent and not visited yet
		for( Each not_visited_spots as new_spot ){
			# 1. get result by check distance between new_spots with start_points. If the distance it bigger than max_distance than assign NA
			spot_assignemt = GetMembershipAssignment(new_spot, start_points, coordinate_df, max_distance, distance_type = 'Eucleadian')
			# 2. Set Visited
			spots_visit_status = # UPDATE new_spot to be visitied
			# 3. Queue this spot to visit its adjacent spot IF it not too far (aka spot_assignemnt is not NA)
			if(!is.na(spot_assignemt)) search_queue = enqueue(new_spot)
		}
	}

	# 3. Return membership result
	return(spots_membership)
}


####################################################
## Auxiliary Functions
####################################################
GetUnitDistance = function(coordinate_df){ # Get Unit distance between spot
	# Still need to implememnt 
}
unit_distance = GetUnitDistance(coordinate_df)

## Search Algortihm - BFS(breadth-first seach) using Queue
## Assilitary function
IsValidSpot = function(spot_coordinate, coordinate_df){ 
	# Check if the spot is valid (not outside boundary, not part of map etc)
} 

GetAdjacentSpots = function(current_spot, coordinate_df, map_type = c('hexagonal','grid')){
	# Generate Valid adjacent spots from current spot in the hexagonal map
	# Note: all "1" here are denoting Unit distance in x and y
	adjacent_spots = if(map_type == 'hexagonal'){
		# Generate 6 spots while top and bottom will be (x,y+1), (x, y-1)
		# Other 4 spots will be (x-1/sqrt(2), y+1/sqrt(2)), (x-1/sqrt(2), y-1/sqrt(2)), (x+1/sqrt(2), y+1/sqrt(2)), (x+1/sqrt(2), y+1/sqrt(2)) 
	}
	if(map_type == 'grid'){
		# Generate 4 spot, will be combination of (x+/-1, y+/-1)
	}

	#Loop through to keep if all spot valida
	valid_spots = # LOOP through "adjacent_spots" for IsValidSpot and return those are True
}

GetMembershipAssignment = function(target_spot, root_spots, coordinate_df, max_distance, distance_type = 'Eucleadian'){
	# Compare target spot with all root spots and Assign which Group/membership assignemnt 
	# But if the distance is greater than the 'not_visited_spots' return a NA assignment
}

