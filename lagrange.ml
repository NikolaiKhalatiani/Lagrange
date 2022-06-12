let lagrange tuplelst x =
let rec summer tuplelst x helpertuplelst =
let rec product tuplelst x x_j  = 
match tuplelst with [] -> 1.
                |(x_k,_)::tail->if x_j <> x_k then ((x -. x_k)/.(x_j -. x_k)) *. (product tail x x_j) else product tail x x_j
in
match tuplelst with [] -> 0.
                |(x_j,y_j)::tail->y_j *. (product helpertuplelst x x_j)+.(summer tail x helpertuplelst)
in
summer tuplelst x tuplelst
