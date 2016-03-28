data BST a=Nil| Node a (BST a) (BST a)
plus2 = (2 +)
times3 = (3 *)

flatten::BST a->[a]
flatten Nil=[]
flatten (Node val left right)=(flatten left)++[val]++(flatten right)
--flatten (Node 3 (Node 2 (Nil) (Nil)) (Node 4 (Nil)(Nil)))
--map (\x->x*x) [1,2,3,4,5]
--map (\x->x+5) [1,2,3,4,5]
square_list lis = [ x*x | x<-lis]
square_positive_list lis = [ x*x | x<-lis,x>0]
