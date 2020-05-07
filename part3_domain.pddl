(define
    (domain pacman_hard)
    (:requirements :strips :typing :equality :adl)

    (:types
        cell
    )

    (:predicates
        (move ?from ?to - cell)
        (at ?pos - cell)
        (connected ?start ?end - cell)
        (has-ghost ?pos - cell)
        (has-food ?pos - cell)
        (has-capsule ?pos - cell)
        (one-capsule-effect-remaining)
        (two-capsule-effects-remaining)
    )


    (:action move
        :parameters (?from ?to - cell)
        :precondition (and
            (at ?from)
            (connected ?from ?to)
            (or
                (not (has-ghost ?to))
                (and
                    (has-ghost ?to)
                    (one-capsule-effect-remaining)
                )
                (and
                    (has-ghost ?to)
                    (two-capsule-effects-remaining)
                )
            )
        )
        :effect (and
            (at ?to)
            (not (at ?from))
            (not (has-food ?to))
            (not (has-capsule ?to))
            (when
                (has-capsule ?to)
                (two-capsule-effects-remaining)
            )
            (when
                (two-capsule-effects-remaining)
                (and
                    (not (has-ghost ?to))
                    (not (two-capsule-effects-remaining))
                    (one-capsule-effect-remaining)
                )
            )
            (when
                (one-capsule-effect-remaining)
                (and
                    (not (has-ghost ?to))
                    (not (one-capsule-effect-remaining))
                )
            )
        )
    )
)