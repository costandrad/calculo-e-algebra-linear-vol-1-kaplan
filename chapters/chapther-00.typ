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

+ Determine se $x < y$, $x = y$ ou $x > y$ para cada um dos seguintes casos:
  #set enum(numbering: "(a)")
  + $x = -3, y = 2$
    #solution([
      $
        x - y = -3 - 2 = -5 < 0 arrow.double x < y
      $
    ])

  + $x = 1, y = -2$
    #solution([
      $
        x - y = 1 - (-2) = 1 + 2 = 3 > 0 arrow.double x > y
      $
    ])

  + $x = sqrt(5) - sqrt(3), y = sqrt(7) - sqrt(2)$
    #solution([
      $
        y - x &= sqrt(7) - sqrt(2) - (sqrt(5) - sqrt(3)) = sqrt(7) - sqrt(2) - sqrt(5) + sqrt(3) = (sqrt(7) - sqrt(5)) + (sqrt(3) - sqrt(2))
      $
      Note que $sqrt(7) - sqrt(5) > 0$ e $sqrt(3) - sqrt(2) > 0$, então
      $
        y - x = (sqrt(7) - sqrt(5)) + (sqrt(3) - sqrt(2)) > 0 arrow.double y > x arrow.double x < y
      $
    ])

      \
  + $display(x = frac(1, sqrt(3) - sqrt(11))), display(y = frac(1, sqrt(3) - sqrt(13)))$
    #solution([
      Sejam $u = display(1/x) = sqrt(3) - sqrt(11)$ e $v = display(1/y) = sqrt(3) - sqrt(13)$. Façamos:
      $
        u - v &= sqrt(3) - sqrt(11) - (sqrt(3) - sqrt(13)) = sqrt(3) - sqrt(11) - sqrt(3) + sqrt(13) = sqrt(13) - sqrt(11)
      $
      Note que
      $
        sqrt(13) > sqrt(11) arrow.double sqrt(13) - sqrt(11) > 0 &arrow.double u - v > 0 arrow.double u > v arrow.double 1/x > 1/y arrow.double x < y
      $
    ])

+ Calcule: 
  #set enum(numbering: "(a)")
  + $|-3,5|$

    #solution([
      $|-3,5| = -(-3,5) = 3,5$, pois $-3,5 < 0$.
    ])

  + $|0,2|$

    #solution([
      $|0,2| = 0,2$, pois $0,2 > 0$.
    ])

  + $| |x| |$

    #solution([
      Dado que $|x| >= 0 quad forall x in RR$, então
      $
        | |x| | = |x| = cases(
          &x", se " x >= 0\
          -&x", se " x < 0
        )
      $
    ])
    \
  + $|-|x| |$

    #solution([
      Dado que $|x| >= 0 quad forall x in RR$, então
      $
        -|x| <= 0 arrow.double | -|x| | = -(-|x|) = |x| = cases(
          &x", se " x >= 0\
          -&x", se " x < 0
        )
      $
    ])

  + $|x - y| - |y - x|$

    #solution([
      $
        |x - y| - |y - x| &= |x-y| - |-(x - y)| = |x-y| - |-1| dot |x-y|\
        &= |x-y| - 1 dot|x-y| = |x-y| - |x-y| = 0
      $
    ])

+ Mostre que $|a-b|$ pode ser interpretado como a distância entre $a$ e $b$ sobre o eixo dos números.

  #solution([
    $
      |a-b| = cases(
        &a-b &", se " a - b >= 0\
        -&(a-b) &", se " a - b < 0
      ) 
      = cases(
        &a-b &", se " a >= b\
        &b-a &", se " a < b
      ) 
    $

    A definição geométrica da distância entre dois pontos na reta real é dada pela diferença entre o maior e o menor, ou seja:

    $
      d(a, b) = max(a,b) = min(a,b).
    $

    Então, para cada caso:

    - Se $ a >= b$, $d(a, b) = max(a,b) = min(a,b) = a - b = |a-b|$;
    - Se $a < b$, $d(a, b) = max(a,b) = min(a,b) = b - a = |a-b|$.

    Em ambos os casos, $d(a, b) = |a-b|$.
    
  ])



