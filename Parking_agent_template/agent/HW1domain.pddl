(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
) 
(:predicates (at ?pt1 - gridcell ?agent - agent) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward_next ?pt1 - gridcell ?pt2 - gridcell) 
(blocked ?pt1 - gridcell) 
) 
(:action UP
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?agent - agent) 
:precondition (and (at ?pt1 ?agent) (up_next ?pt1 ?pt2) (not(blocked ?pt2)))
:effect (and (at ?pt2 ?agent) (not (at ?pt1 ?agent)))
) 
(:action DOWN
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?agent - agent) 
:precondition (and (at ?pt1 ?agent) (down_next ?pt1 ?pt2) (not(blocked ?pt2)))
:effect (and (at ?pt2 ?agent) (not (at ?pt1 ?agent)))
) 
(:action FORWARD
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?agent - agent) 
:precondition (and (at ?pt1 ?agent) (forward_next ?pt1 ?pt2) (not(blocked ?pt2)))
:effect (and (at ?pt2 ?agent) (not (at ?pt1 ?agent)))
) 
) 
