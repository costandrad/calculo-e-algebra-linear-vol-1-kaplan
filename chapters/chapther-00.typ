#import "../styles.typ": *



#set heading(numbering: (n1, ..x) => numbering("1.", n1 - 1, ..x))

= Introdução

== Problemas da página 6

+ 
  #set enum(numbering: "(a)")
  + Encontre um inteiro $x$ tal que $10sqrt(2) < x < 10sqrt(3)$.

    #solution([
      $
        10 sqrt(2) < x < 10 sqrt(3) &arrow.double (10 sqrt(2))^2 < x^2 < (10 sqrt(3))^2 arrow.double 200 < x^2 < 300\
          &arrow.double x^2 = cases(225\ 256\ 289) arrow.double x = cases(15\ 16\ 17)
      $
    ])

  + Encontre um número inteiro $x$ tal que $-5sqrt(2) < x < -3 sqrt(3)$.

    #solution([
      $
        -5sqrt(2) < x < -3 sqrt(3) dot (-1) &arrow.double 5sqrt(2) > -x > 3 sqrt(3) arrow.double 3sqrt(3) < -x < 5 sqrt(2)\
        &arrow.double (3sqrt(3))^2 < (-x)^2 < (5 sqrt(2))^2\
        &arrow.double 27 < (-x)^2 < 50\
        &arrow.double (-x)^2 = cases(36\ 49) arrow.double -x = cases(6\ 7) arrow.double x = cases(-6, -7)
      $
    ])

  + Encontre um número racional $x$ tal que $sqrt(2) < x < sqrt(3)$.

    #solution([
      $
        sqrt(2) < x < sqrt(3) &arrow.double (sqrt(2))^2 < x^2 < (sqrt(3))^2 arrow.double 2 < x^2 < 3
      $
      Podemos escolher arbitrariamente o número $x^2 = 2,25$, tal que:
      $
        x^2 = 2,25 = 225/100 = (15/10)^2 arrow.double x = 15/10 = 1,50
      $
    ])

  + Encontre um número racional $x$ tal que $pi < x < pi + 0,01$.
    #solution([
      Com cinco cadas decimais após a vírgula, temos $pi approx 3,14159$, donde $pi + 0,01 approx 3,15159$. Dado que nosso objetivo é encontrar um número racional que esteja entre esses dois valores, podemos escolher arbitrariamente o número
      $
        x = 3,142
      $
    ])




