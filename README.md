# Monte Carlo 
Probability Monte Carlo method created in R programming language

Description of problem:
  - the task is to determine the probability of successful roll of dice.
  - dice set: 1 green, 1 yellow, 1 purple, 1 red
  - yellow and green dice are success dice
  - purple and red dice are failure dice
  - yellow and red dice are 12-sided
  - purple and green dice are 8-sided
  - succes roll when:
    green + yellow + (-)purple + (-)red > 0

                    DICE PUNCTATION TABLE
           dice wall	  1	2	3	4	5	6	7	8	9	10 11	12 
           green	      0	1	1	2	0	0	1	0	
           yellow	      0	1	1	2	2	0	1	1	1	 0	0	 1 
           purple       0	1	2	0	0	0	0	1	
           red     	    0	1	1	2	2	0	0	1	1	 0	0	 1

Solution:
  - for loop with 10000 iteration
  - single iteration is a roll of all dice
  - if it's a success roll then add 1 to 'success' variable
  - after ending of for loop divide 'success' variable divide by n = 10000
