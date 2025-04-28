(define 
    (domain magic)

    (:types 
        magician audience card
    )

    (:functions 
        (number ?c - card)
        (selected ?c - card)
        (selecting ?a - audience)
        (peeking ?m - magician)
        (peeked ?m - magician)
        (surprised ?a - audience)
    )

    (:action audience_selecting_card
        :parameters (?a - audience ?c - card)
        :precondition (and 
            (= (selected ?c) 0)
            (= (selecting ?a) 0)
        )
        :effect (and 
            (assign (selecting ?a) 1)
        )
    )
    
    (:action audience_finish_selecting
        :parameters (?a - audience ?c - card)
        :precondition (and 
            (= (selected ?c) 0)
            (= (selecting ?a) 1)
        )
        :effect (and 
            (assign (selected ?c) 1)
        )
    )
    
    (:action magician_peeking
        :parameters (?m - magician ?c - card)
        :precondition (and 
            (= (selected ?c) 1)
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
            (= (selected ?c) 1)
            (= (peeked ?m) 0)
            (= (peeking ?m) 1)
        )
        :effect (and 
            (assign (peeked ?m) 1)
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
            (!= (@jp ("b [?m]") (number ?c)) jp.none)
            (= (@jp ("b [?a] b [?m]") (number ?c)) jp.none)
            (= (surprised ?a) 0)
        )
        :effect (and 
            (assign (surprised ?a) 1)
        )
    )
    
 
)