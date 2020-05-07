(define
    (domain pacman_mid)
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
        (ate-capsule)
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
                    (ate-capsule)
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
                (ate-capsule)
            )
        )
    )
)