import Control.Monad.Writer

multiplyListTailrec [] acc = acc
multiplyListTailrec (x:xs) acc = multiplyListTailrec xs (acc * x)

{-test = foldr (\x acc -> do tell [acc]; return (acc)) 0 [1, 2, 3]-}

factorialTail 1 acc = acc
factorialTail n acc = factorialTail (n - 1) (n * acc)
