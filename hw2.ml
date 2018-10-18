(*hw2.ml*)

(*takes  list right = expr left = list of grammars *)
(*helper function parses through the grammar and convert grammar passes it the list of grammars*)
let convert_grammar gram1 =
	let start = (fst gram1) and glist = (snd gram1) in 
	match glist with
	| [] -> []
	| hd::tl -> (start, helper glist start)
;;
	
let rec helper glist start = 
	let a = (List.hd glist) and b = (List.tl glist) in
	match a with
	| [] -> []
	| (x,y) -> if x = start then y::helper b start else helper b start
;;

	(*if hd = hd::function2 then hd::function2 tl else function2 tl*)
;;
	

(* let rec func a  = 
	match a with 
	| [] -> []
	| h::t -> if h = WHATIWANT then h::func t else func t
 *)
