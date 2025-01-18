{-# LANGUAGE FlexibleInstances #-}

instance Eq a => Eq (Maybe a) where
  Nothing == Nothing = True
  (Just x) == (Just y) = x == y
  _ == _ = False -- This case correctly handles all other comparisons

instance (Eq a, Show a) => Show (Maybe a) where
  show Nothing = "Nothing"
  show (Just x) = "Just " ++ show x

main :: IO ()
main = do
  print (Nothing :: Maybe Int)
  print (Just 5 :: Maybe Int)
  print (Nothing == Nothing)
  print (Just 5 == Just 5)
  print (Just 5 == Nothing)
  print (Just 5 /= Just 5) 
  print (Just 5 /= Nothing)