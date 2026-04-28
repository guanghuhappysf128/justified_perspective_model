(define 
    (domain magic)

    (:types 
        magician audience card
    )

    (:functions 
        (number ?c - card)
        (initial_number ?c - card)
        (audience_chosen_number ?c - card)
        (revealed ?c - card)
        (shuffled ?c - card)

        (shuffling ?a - audience)
        (peeking ?m - magician)
        (peeked ?m - magician)
        (surprised ?a - audience)
    )


    (:action magician_turn_the_top_card_back
        :parameters (?m - magician ?c - card)
        :precondition (and 
            (= (revealed ?c) 1)
        )
        :effect (and 
            (assign (revealed ?c) 0)
        )
    )

    (:action audience_shuffling_card
        :parameters (?a - audience ?c - card)
        :precondition (and 
            (= (shuffled ?c) 0)
            (= (shuffling ?a) 0)
            (= (revealed ?c) 0)

        )
        :effect (and 
            (assign (shuffling ?a) 1)
            (assign (number ?c) (audience_chosen_number ?c)) ; shuffle the card, change its value, should be a random number
        )
    )
    
    (:action audience_finished_shuffling_and_checking_the_top_card
        :parameters (?a - audience ?c - card)
        :precondition (and 
            (= (shuffled ?c) 0)
            (= (shuffling ?a) 1)
        )
        :effect (and 
            (assign (shuffled ?c) 1)
        )
    )
    
    (:action magician_secretly_peeking
        :parameters (?m - magician ?c - card)
        :precondition (and 
            (= (shuffled ?c) 1)
            (= (peeked ?m) 0)
            (= (peeking ?m) 0)
        )
        :effect (and 
            (assign (peeking ?m) 1)
        )
    )

    (:action magician_finish_peeking
        :parameters (?m - magician ?c - card)
        :precondition (and 
            (= (shuffled ?c) 1)
            (= (peeked ?m) 0)
            (= (peeking ?m) 1)
        )
        :effect (and 
            (assign (peeked ?m) 1)
            (assign (peeking ?m) 0)
        )
    )
    
    (:action magician_change_value
        :parameters (?m - magician ?c - card)
        :precondition (and 
            (= (peeked ?m) 1)
        )
        :effect (and 
            (increase (number ?c) 1)
        )
    )

    (:action surprise_by_reveal_changed_value
        :parameters (?m - magician ?a - audience ?c - card)
        :precondition (and 
            (!= (@jp ("b [?a]") (number ?c)) jp.none)
            (!= (@jp ("b [?a]") (number ?c)) (number ?c))
            (= (surprised ?a) 0)
        )
        :effect (and 
            (assign (surprised ?a) 1)
        )
    )

    (:action surprise_by_reveal_known_the_value
        :parameters (?m - magician ?a - audience ?c - card)
        :precondition (and 
            (= (@jp ("b [?m]") (number ?c)) (audience_chosen_number ?c))
            (= (@jp ("b [?a] b [?m]") (number ?c)) (initial_number ?c))
            (= (@jp ("b [?a]") (number ?c)) (audience_chosen_number ?c))
            (= (surprised ?a) 0)
            (= (peeking ?m) 0)
        )
        :effect (and 
            (assign (surprised ?a) 1)
        )
    )
    
 
)