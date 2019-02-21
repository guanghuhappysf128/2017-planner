(define (problem small)
  (:domain pong_fn_strips)
  (:objects
    p_0 p_1 p_2 p_3 p_4 p_5 p_6 p_7 - puck
  )
    (:init
        ;; velocity vectors data
        (= (vy v_0_0) 0)
        (= (vx v_0_0) 0)

        (= (vx v_1_0) 1)
        (= (vy v_1_0) 0)

        (= (vx v_m1_0) -1)
        (= (vy v_m1_0) 0)

        (= (vx v_0_1) 0)
        (= (vy v_0_1) 1)

        (= (vx v_0_m1) 0)
        (= (vy v_0_m1) -1)

        (= (vx v_1_1) 1)
        (= (vy v_1_1) 1)

        (= (vx v_1_m1) 1)
        (= (vy v_1_m1) -1)

        (= (vx v_m1_1) -1)
        (= (vy v_m1_1) 1)

        (= (vx v_m1_m1) -1)
        (= (vy v_m1_m1) -1)

        ;; racket
        (= (center r0) 10)
        (= (radius r0) 5)
        (= (dy r0) 0)
        (= (prev_dy r0) 0)

        ;; puck initial conditions
        (= (x p_0) 23)
(= (y p_0) 15)
(= (v_vec p_0) v_1_1)
(= (acceleration p_0) 1)
(= (hits r0_obs p_0) 0)
(= (hits top p_0) 0)
(= (hits bottom p_0) 0)
(= (hits right p_0) 0)
(= (x p_1) 22)
(= (y p_1) 12)
(= (v_vec p_1) v_1_m1)
(= (acceleration p_1) 1)
(= (hits r0_obs p_1) 0)
(= (hits top p_1) 0)
(= (hits bottom p_1) 0)
(= (hits right p_1) 0)
(= (x p_2) 8)
(= (y p_2) 19)
(= (v_vec p_2) v_1_m1)
(= (acceleration p_2) 1)
(= (hits r0_obs p_2) 0)
(= (hits top p_2) 0)
(= (hits bottom p_2) 0)
(= (hits right p_2) 0)
(= (x p_3) 44)
(= (y p_3) 18)
(= (v_vec p_3) v_1_1)
(= (acceleration p_3) 1)
(= (hits r0_obs p_3) 0)
(= (hits top p_3) 0)
(= (hits bottom p_3) 0)
(= (hits right p_3) 0)
(= (x p_4) 37)
(= (y p_4) 18)
(= (v_vec p_4) v_1_1)
(= (acceleration p_4) 1)
(= (hits r0_obs p_4) 0)
(= (hits top p_4) 0)
(= (hits bottom p_4) 0)
(= (hits right p_4) 0)
(= (x p_5) 42)
(= (y p_5) 17)
(= (v_vec p_5) v_1_1)
(= (acceleration p_5) 1)
(= (hits r0_obs p_5) 0)
(= (hits top p_5) 0)
(= (hits bottom p_5) 0)
(= (hits right p_5) 0)
(= (x p_6) 38)
(= (y p_6) 11)
(= (v_vec p_6) v_1_1)
(= (acceleration p_6) 1)
(= (hits r0_obs p_6) 0)
(= (hits top p_6) 0)
(= (hits bottom p_6) 0)
(= (hits right p_6) 0)
(= (x p_7) 47)
(= (y p_7) 19)
(= (v_vec p_7) v_1_1)
(= (acceleration p_7) 1)
(= (hits r0_obs p_7) 0)
(= (hits top p_7) 0)
(= (hits bottom p_7) 0)
(= (hits right p_7) 0)

        (= (bound top) 30)
        (= (bound bottom) 0)
        (= (bound right) 62)
        (= (bound r0_obs) 1)
        (= (bound left) 0)

        (= (check top) check_top)
        (= (check bottom) check_bottom)
        (= (check right) check_right)
        (= (check left) check_left)
        (= (check r0_obs) check_paddle)

        (= (next_mode control) sim_motion)
        (= (next_mode sim_motion) check_top)
        (= (next_mode check_top) check_bottom)
        (= (next_mode check_bottom) check_right)
        (= (next_mode check_right) check_paddle)
        (= (next_mode check_paddle) check_left)
        (= (next_mode check_left) control)

        (= (current_mode) control)
    )

   (:goal
        (and
            (@game_on)
            (> (hits r0_obs p_0) 2)
(> (hits r0_obs p_1) 2)
(> (hits r0_obs p_2) 2)
(> (hits r0_obs p_3) 2)
(> (hits r0_obs p_4) 2)
(> (hits r0_obs p_5) 2)
(> (hits r0_obs p_6) 2)
(> (hits r0_obs p_7) 2)
        )
   )

   (:bounds
    (pixel - int[-192..192])
    (value - int[0..1000])
   )

 )

