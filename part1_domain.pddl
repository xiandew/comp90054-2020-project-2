(define
    (domain pacman_simple)
    (:requirements :strips :typing :equality :adl)

    (:types
        cell
    )

    (:predicates
        (move ?from ?to - cell)
        (at ?pos - cell)
        (connected ?start ?end - cell)
        (has-ghost ?pos - cell)
        (has-food ?pos -cell)
    )

    (:action move
        :parameters (?from ?to - cell)
        :precondition (and
            (at ?from)
            (connected ?from ?to)
            (not (has-ghost ?to))
        )
        :effect (and
            (at ?to)
            (not (at ?from))
            (not (has-food ?to))
        )
    )
)