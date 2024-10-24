;Header and description

(define 
    (domain grid)

    (:types
        location agent survivor
    )

    (:functions
        (agent_loc ?i - agent)
        (survivor_loc ?s - survivor)
        (movable ?i - agent)
        (sharable ?i - agent)
        (receivable ?i - agent)
        (room_id ?l - location)
        (searched ?l - location)
        (shared ?s - survivor)
        
        (connected ?l1 - location ?l2 - location)
        (blockable ?l - location)
        (blocked ?l - location)

        (loc_shared ?l - location)
        (loc_sensed ?l - location ?a - agent)

    )

    (:action move
        :parameters (?i - agent, ?l1 - location, ?l2 - location)
        :precondition (
            (= (blockable ?l2) 0)
            ; agent is in the location
            (= (agent_loc ?i) (room_id ?l1))
            ; agent can move
            (= (movable ?i) 1)
            ; the locations are connected
            (= (connected ?l1 ?l2) 1)
            ; the location is not occupied
            ; 0 means have not been searched
            ; 1 means occuriped by agent
            ; 2 means searched
            ; agent cannot entry a room if its been ocuuiped by another agent
            (!= (searched ?l2) 1)
            
        )
        :effect (
            ; agent is in the new location
            (assign (agent_loc ?i) (room_id ?l2))
            ; the old location is searched
            (assign (searched ?l1) 2)
            ; the new location is occupied
            (assign (searched ?l2) 1)
        )
    )

    (:action sense
        :parameters (?i - agent, ?l1 - location, ?l2 - location)
        :precondition (
            (= (blockable ?l2) 1)
            ; the locations are connected
            (= (connected ?l1 ?l2) 1)
            ; agent is in the location
            (= (agent_loc ?i) (room_id ?l1))
            ; agent can move
            (= (movable ?i) 1)
            
            ; (= (@ep ("+ b [?i]") (= (blocked ?l2) 1)) ep.unknown)
        )
        :effect (
            (assign (loc_sensed ?l2 ?i) 1)
        )
    )
    

    (:action move_blockable
        :parameters (?i - agent, ?l1 - location, ?l2 - location)
        :precondition (
            (= (blockable ?l2) 1)
            ; agent is in the location
            (= (agent_loc ?i) (room_id ?l1))
            ; agent can move
            (= (movable ?i) 1)
            ; the locations are connected
            (= (connected ?l1 ?l2) 1)
            ; the location is not occupied
            ; 0 means have not been searched
            ; 1 means occuriped by agent
            ; 2 means searched
            ; agent cannot entry a room if its been ocuuiped by another agent
            ; (!= (searched ?l2) 1)
             (= (@ep ("+ b [?i]") (= (blocked ?l2) 0)) ep.true)
        )
        :effect (
            ; agent is in the new location
            (assign (agent_loc ?i) (room_id ?l2))
            ; the old location is searched
            (assign (searched ?l1) 2)
            ; the new location is occupied
            (assign (searched ?l2) 1)
        )
    )
    
    (:action blockable_share
        :parameters (?i - agent, ?l - location)
        :precondition (and 
            ; only specified agents can receive (commander)
            ; this is shown in the python runner 
            ; only specified agents can communicate to commander
            (= (sharable ?i) 1)
            (!= (@ep ("+ b [?i]") (= (blocked ?l) 1)) ep.unknown)
        )
        :effect (and 
            (assign (loc_shared ?l) 1)
        )
    )

    (:action communicate_to_commander
        :parameters (?i - agent, ?s - survivor, ?r - location)
        :precondition (and 
            ; only specified agents can receive (commander)
            ; this is shown in the python runner 
            ; only specified agents can communicate to commander
            (= (sharable ?i) 1)
            (= (survivor_loc ?s) (room_id ?r))
            (= (agent_loc ?i) (room_id ?r))
        )
        :effect (and 
            (assign (shared ?s) 1)
        )
    )



)