(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
time
) 
(:predicates (at ?pt1 - gridcell ?agent - agent) 
(at_time ?t1 - time ?agent - agent) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward_next ?pt1 - gridcell ?pt2 - gridcell) 
(time_next ?t1 - time ?t2 - time) 
(blocked ?t1 - time ?pt1 - gridcell) 
) 
(:action UP
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?agent - agent ?t1 - time ?t2 - time) 
:precondition (and (at ?pt1 ?agent) (up_next ?pt1 ?pt2) (not (blocked ?t1 ?pt2))) (at_time ?t1 ?agent) (time_next ?t1 ?t2)
:effect (and (at ?pt2 ?agent) (at_time ?t2 ?agent) (not(at ?pt1 ?agent)) (not (at_time ?t1 ?agent)))
) 
(:action DOWN
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?agent - agent ?t1 - time ?t2 - time) 
:precondition (and (at ?pt1 ?agent) (down_next ?pt1 ?pt2) (not (blocked ?t1 ?pt2)) (at_time ?t1 ?agent) (time_next ?t1 ?t2))
:effect (and (at ?pt2 ?agent) (at_time ?t2 ?agent) (not(at ?pt1 ?agent)) (not (at_time ?t1 ?agent)))
) 
(:action FORWARD_1
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?agent - agent ?t1 - time ?t2 - time) 
:precondition (and (at ?pt1 ?agent) (forward_next ?pt1 ?pt2) (not (blocked ?t1 ?pt2)) (at_time ?t1 ?agent) (time_next ?t1 ?t2))
:effect (and (at ?pt2 ?agent) (at_time ?t2 ?agent) (not(at ?pt1 ?agent)) (not (at_time ?t1 ?agent)))
) 
(:action FORWARD_2
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?pt3 - gridcell ?agent - agent ?t1 - time ?t2 - time) 
:precondition (and (at ?pt1 ?agent) (at_time ?t1 ?agent) (forward_next ?pt2 ?pt3) (not (blocked ?t1 ?pt2)) (not (blocked ?t1 ?pt3)) (time_next ?t1 ?t2) (forward_next ?pt1 ?pt2))
:effect (and (at ?pt3 ?agent) (at_time ?t2 ?agent) (not(at ?pt1 ?agent)) (not (at_time ?t1 ?agent)))
) 
(:action FORWARD_3
:parameters ( ?pt1 - gridcell ?pt2 - gridcell ?pt3 - gridcell ?pt4 - gridcell ?agent - agent ?t1 - time ?t2 - time) 
:precondition (and (at ?pt1 ?agent) (at_time ?t1 ?agent) (forward_next ?pt1 ?pt2) (forward_next ?pt2 ?pt3) (forward_next ?pt3 ?pt4) (not (blocked ?t1 ?pt2)) (not (blocked ?t1 ?pt3)) (not (blocked ?t1 ?pt4)) (time_next ?t1 ?t2))
:effect (and (at ?pt4 ?agent) (at_time ?t2 ?agent) (not(at ?pt1 ?agent)) (not (at_time ?t1 ?agent)))
) 
) 
