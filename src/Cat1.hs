module Cat1 where

data Cat = Cat { name :: String, age :: Int }

meow :: Cat -> String
meow cat = "Meow! My name is " ++ name cat ++ " and I am " ++ show (age cat) ++ " years old."


