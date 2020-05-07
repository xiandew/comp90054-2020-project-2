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
        (has_ghost ?pos - cell)
        (has_food ?pos -cell)
    )

    (:action move
        :parameters (?from ?to - cell)
        :precondition (and
            (at ?from)
            (connected ?from ?to)
            (not (has_ghost ?to))
        )
        :effect (and
            (at ?to)
            (not (at ?from))
            (not (has_food ?to))
        )
    )
)