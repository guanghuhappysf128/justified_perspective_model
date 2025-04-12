( define
    (problem thief)
    (:domain thief)

    (:agents
        t g
    )
    (:objects
        goal
    )

    (:variables
        (position [t,g])
        (noise [t,g])
        (peeking [t,g])
        (goal [t,g])
    )

    (:init
        (= (position t) 'r1')
        (= (position g) 'r2')
        (= (noise t) 'f')
        (= (noise g) 'f')
        (= (peeking t) 'f')
        (= (peeking g) 'f')
        (= (goal t) 'f')
        (= (goal g) 'f')
    )

    (:goal (and 
        ; (:epistemic + b [t] $ b [g] (= (position t) 'r1'))
        ; (:epistemic + b [g] $ b [t] (= (position g) 'r2'))
        ; (:epistemic + b [t] (= (position t) 'r1'))
        ; (:epistemic + b [g] (= (position g) 'r2'))
        ; (:epistemic + b [t] (= (position g) 'r2'))
        ; (:ontic (= (position t) 'r1'))
        (:ontic (= (goal t) 't'))
        ; (:epistemic + b [t] (= (position g) 'r2'))
        ; (:epistemic + b [b] (= (observed s1) 't'))
        ; (:epistemic + b [b] (= (observed s2) 't'))
    ))

    (:domains
        (position enumerate ['r1', 'r2'])
        (noise enumerate ['t','f'])
        (peeking enumerate ['t','f'])
        (goal enumerate ['t','f'])
    )
)

