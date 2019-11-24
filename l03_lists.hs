-- 1   ':' -- Basic List constructor
favNums = 2 : 7 : 21 : []  -- [] signifies nil

-- 2   '++' -- Concat 
favNumsV2 = favNums ++ [12,17,19]  -- [1,7,21,12,17,19]

-- 3 head -- Returns the first element of a list.
first = head favNums

-- 4 tail -- The tail of a list is everything except the first element. Returns an error if the list is empty.
rest = tail favNums

-- 5 last -- The opposite of head; last returns the last element of a list.
behind = last favNums

-- 6 init -- The opposite of tail. Given a list, init returns the list without the last element.
ahead = init favNums

-- 7 length -- Returns the length of the list
len = length favNums

-- 8 - !! -- Returns the element of a list located at the specified index. Note that an 'index' starts counting from zero
second = favNums !! 1 -- Zero Indexing

-- 9 - null - Check if list is null
isNull = null favNums -- False

-- 10 - reverse 
rev = reverse favNums

-- 11 - maximum, minimum
mxm = maximum favNums
mnm = minimum favNums

-- 12 - elem and notElem -- checks if an elemenyy is in the list	
isAinMilkshake = elem 'a' "milkshake"

-- 13 - concat - takes a list of lists and returns a combined list
checkConcat = concat ["ABCD", "AB", "CBA"]

-- 14 - take, drop -- take n [a] gives you the first n elements of the list. Likewise, drop n [a] gives you everything back except the first n elements of a list.
v1 = take 4 "milk - legendary stuff"
v2 = drop 7 "milk - legendary stuff"

-- 15 takeWhile and dropWhile -- takeWhile (PREDICATE) LIST
v3 = takeWhile (>4) [1..10]
isEven a = if (mod a 2) == 0 then True else False
v4 = dropWhile (isEven) [1..10]
v5 = takeWhile (<5) [1..10]

-- 16 - words and unwords -- words takes in a single String and breaks it up wherever there are spaces, into a list of Strings. And unwords does the opposite. 
v6 = words "this is a cgi string after you decode it"
v7 = unwords v6