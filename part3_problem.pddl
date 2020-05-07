(define
    (problem pacman-level-1)
    (:domain pacman_hard)

;; problem map
;;  | 1 | 2 | 3 | 4 | 5 |
;; -|---|--- ---|---|---|
;; a| P | _ | _ | G | F |
;; b| _ | C | _ | G | C |
;;  |---|---|---|---|---|

  



    (:objects
        a1 a2 a3 a4 a5 b1 b2 b3 b4 b5 - cell
	)

	(:init
        (at a1)
        (has-capsule b2)
        (has-capsule b5)
        (has-ghost a4)
        (has-ghost b4)
        (has-food a5)
        (connected a1 a2) (connected a1 b1)
        (connected a2 a1) (connected a2 a3) (connected a2 b2)
        (connected a3 a2) (connected a3 a4) (connected a3 b3)
        (connected a4 a3) (connected a4 a5) (connected a4 b4)
        (connected a5 a4) (connected a5 b5)
        (connected b1 b2) (connected b1 a1)
        (connected b2 b1) (connected b2 b3) (connected b2 a2)
        (connected b3 b2) (connected b3 b4) (connected b3 a3)
        (connected b4 b3) (connected b4 b5) (connected b4 a4)
        (connected b5 b4) (connected b5 a5)
	)

    (:goal
        (and
            (not (has-food a1))
            (not (has-food a2))
            (not (has-food a3))
            (not (has-food a4))
            (not (has-food a5))
            (not (has-food b1))
            (not (has-food b2))
            (not (has-food b3))
            (not (has-food b4))
            (not (has-food b5))
            (not (has-ghost a1))
            (not (has-ghost a2))
            (not (has-ghost a3))
            (not (has-ghost a4))
            (not (has-ghost a5))
            (not (has-ghost b1))
            (not (has-ghost b2))
            (not (has-ghost b3))
            (not (has-ghost b4))
            (not (has-ghost b5))
        )
	)
)