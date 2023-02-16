module Opdracht1Point3 where

puzzle :: [(Integer, Integer, Integer)]
puzzle = [(a,b,c)|a<-[-100..100],b<-[-100..100],c<-[-100..100],a==2*(b-c),b==a*c,c*2==a+c] 
