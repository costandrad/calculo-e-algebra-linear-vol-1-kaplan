#import "../styles.typ": *





= Introdução

== Problemas da página 6

+ 
  #set enum(numbering: "(a)")
  + Encontre um inteiro $x$ tal que $10sqrt(2) < x < 10sqrt(3)$.

    #solution([
      $
        10 sqrt(2) < x < 10 sqrt(3) &arrow.double (10 sqrt(2))^2 < x^2 < (10 sqrt(3))^2 arrow.double 200 < x^2 < 300\
          &arrow.double x^2 = cases(225, 256,289) arrow.double x = cases(15, 16, 17)
      $
    ])

  + Encontre um número inteiro $x$ tal que $-5sqrt(2) < x < -3 sqrt(3)$.

    #solution([
      $
        -5sqrt(2) < x < -3 sqrt(3) dot (-1) &arrow.double 5sqrt(2) > -x > 3 sqrt(3) arrow.double 3sqrt(3) < -x < 5 sqrt(2)\
        &arrow.double (3sqrt(3))^2 < (-x)^2 < (5 sqrt(2))^2\
        &arrow.double 27 < (-x)^2 < 50\
        &arrow.double (-x)^2 = cases(36, 49) arrow.double -x = cases(6, 7) arrow.double x = cases(-6, -7)
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
          &x", se " x >= 0,
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
          &x", se " x >= 0,
          -&x", se " x < 0
        )
      $
    ])

  + $|x - y| - |y - x|$

    #solution([
      $
        |x - y| - |y - x| &= |x-y| - |-(x - y)| = |x-y| - |-1| dot |x-y|,
        &= |x-y| - 1 dot|x-y| = |x-y| - |x-y| = 0
      $
    ])

+ Mostre que $|a-b|$ pode ser interpretado como a distância entre $a$ e $b$ sobre o eixo dos números.

  #solution([
    $
      |a-b| = cases(
        &a-b &", se " a - b >= 0,
        -&(a-b) &", se " a - b < 0
      ) 
      = cases(
        &a-b &", se " a >= b,
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

+ Achar $x$ em cada um dos casos: 
  #set enum(numbering: "(a)")
  + $|x| = 0$

    #solution([
      $
        |x| = 0 arrow.double x = 0
      $
    ])

  + $|x| = 2$
    #solution([
      $
        |x| = 2 arrow.double x = plus.minus 2
      $
    ])

  + $|x - 1| = 2$
    #solution([
      $
        |x - 1| = 2 arrow.double x - 1 = plus.minus 2 arrow.double 
        cases(
          x - 1= &2,
          x-1 = -&2
        )
        arrow.double cases(
          x = &3,
          x = -&1
        )
      $
    ])

  + $|x+1| = 1$
    #solution([
      $
        |x + 1| = 1 arrow.double x + 1 = plus.minus 1 arrow.double 
        cases(
          x + 1= &1,
          x + 1 = -&1
        )
        arrow.double cases(
          x = &0,
          x = -&2
        )
      $
    ])



+ O símbolo $sqrt(x)$ indica $0$ se $x = 0$ e a raiz quadrada positiva de $x$, se $x > 0$. Justifique as seguintes regras para todos reais $x$ e $y$.

  #set enum(numbering: "(a)")
  + $sqrt(x^2) = |x|$
    #solution([
      Para $x = 0$, a identidade é imediata. Se $x > 0$
      $sqrt(x^2) = x = |x|$ e se $x < 0$, $sqrt(x^2) = -x = |x|$. Em todo caso, 
      $
        sqrt(x^2) = |x|
      $
    ])
  
  + $sqrt(x^4) = x^2$

    #solution([
      $
        sqrt(x^4) = sqrt((x^2)^2) = x^2
      $
    ])

  + $(x|x|)^2 = x^4$
    #solution([
      $
        (x|x|)^2 = x^2 dot (|x|)^2 = x^2 dot x^2 = x^4
      $
    ])

  + $sqrt(x^2 - 2x y + y^2) = |x-y|$

    #solution([
      $
        sqrt(x^2 - 2x y + y^2) = sqrt((x-y)^2) = |x-y|
      $
    ])

+ Mostre que as regras 20 e 21 são válidas para todos os números reais $a$ e $b$.

  #solution([
    - Regra 20: $|a| = |-a|$

      - Para $a = 0$, a identidade é imediatamente válida;
      - Para $a > 0$, temos: $|a| = a$ e $|-a| = -(-a) = a = |a|$;
      - Para $a < 0 arrow.double -a > 0$, temos: $|a| = -a$ e $|-a| = -a = |a|$.
      Portanto, a regra 20 é verdadeira para todo número real.

    - Regra 21: $|a b| = |a| |b|$
      - Para $a = b = 0$, a identidade é imediatamente válida;
      - Caso 1: $a$ e $b$ têm mesmo sinal. 

        Quando ambos os números são positivos, ou seja, $a > 0$ e $b > 0$, temos:
        $
          a b > 0 arrow.double |a b| = a b = |a| |b|
        $

        Quando ambos os número são negativos, ou seja, $a < 0$ e $b < 0$, temos:
        $
          a b > 0 arrow.double |a b| = a b = (-a)(-b) = |a||b|
        $

      - Caso 2: $a$ e $b$ têm sinais distintos. Sem perda de generalidade, consideremos: $a > 0$ e $b < 0$. O produto entre os números é negativos. Então,
      $
         a b < 0 arrow.double |a b| = - (a b) = a (-b) = |a| |b|.
      $
  ])

+ 
  #set enum(numbering: "(a)")
  + $a < b$ implica $a^2 < b^2$?
    #solution([
      Não, basta considerar o contra-exemplo $a = -2$ e $b = -1$, tal que $a < b$, mas $a^2 > b^2$.
    ])

  + $a < b$ implica $a^3 < b^3$?
    #solution([
    ])





== Problemas da página 9

+ Seja $NN$ o conjuto de todos os inteiros positivos. Mostre que cada um dos seguintes conjuntos é finito e exiba seus elementos.
  #set enum(numbering: "(a)")
  + ${x | x " está em " NN " e " x < 5}$
    #solution([
      ${x | x " está em " NN " e " x < 5} = {0, 1, 2, 3, 4}$
    ])

  + ${x | x " está em " NN " e " 11 < x^3 < 134}$
    #solution([
      $
        11 < x^3 < 134 &arrow.double 3^3 <= x^3 <= 5^3\ 
          &arrow.double {x | x " está em " NN " e " 11 < x^3 < 134} = {3, 4, 5}
      $
    ])

  + ${x | x " está em " NN " e " x^2 + x -1 < 50}$
    #solution([
    #let xs = range(50)
    #let ys = xs.filter(x => calc.pow(x, 2) + x - 1 < 50)

    
    
    $
      {x | x " está em " NN " e " x^2 + x -1 < 50} =  {#ys.map(x => str(x)).join(", ")}
    $

    ])

  + ${x | |x| < sqrt(2) " e " x " ou " -x " está em " NN}$.

    #solution([
      #let xs = range(-5, 5).filter(x => calc.abs(x) < calc.sqrt(2))
      $ 
        {x | |x| < sqrt(2) " e " x " ou " -x " está em " NN} = {#xs.map(x => str(x)).join(", ")}
      $
    ])

+ Determine se 3 pertence aos seguintes conjuntos:  
  #set enum(numbering: "(a)")
  + ${x | x > -2 } union {x | x < 0}$
    #solution([
      Note que:
      $
        {x | x > -2 } union {x | x < 0} = {x | x != -2 " ou " x != 0}.
      $
      Portanto, $3 in {x | x != -2 " ou " x != 0}$, como ilustra o diagrama abaixo: 
      #figure()[
        #cetz.canvas({
          import cetz.draw: *

          line((-2, 0), (-2, -3), stroke: (dash: "dashed", paint: gray))
          line((0, 0), (0, -3), stroke: (dash: "dashed", paint: gray))

          line((-5, 0), (5, 0), mark: (end: ">>", fill: black), name:"set-1")
          content("set-1.end", [$x$], anchor: "north-west")
          for x in range(-4, 5) {
            line((x, 0.2), (x, -0.2), name:"set-1-ticks")
            content("set-1-ticks.end", [$#x$], anchor: "north", padding: "0.1")
          }
          content("set-1.start", [$x > -2$], anchor: "east", padding: 0.2)
          line((-2, 0), (4.7, 0), stroke: 2.5pt+primary-color)
          circle((-2, 0), radius:3pt, stroke: 2.5pt+primary-color, fill: white)

          line((-5, -1.5), (5, -1.5), mark: (end: ">>", fill: black), name:"set-2")
          content("set-2.end", [$x$], anchor: "north-west")
          for x in range(-4, 5) {
            line((x, -1.3), (x, -1.7), name:"set-2-ticks")
            content("set-2-ticks.end", [$#x$], anchor: "north", padding: "0.1")
          }
          content("set-2.start", [$x < 0$], anchor: "east", padding: 0.2)
          line((-5, -1.5), (0, -1.5), stroke: 2.5pt+primary-color)
          circle((0, -1.5), radius:3pt, stroke: 2.5pt+primary-color, fill: white)

          line((-5, -3), (5, -3), mark: (end: ">>", fill: black), name:"set-3")
          content("set-3.end", [$x$], anchor: "north-west")
          for x in range(-4, 5) {
            line((x, -2.8), (x, -3.2), name:"set-3-ticks")
            content("set-3-ticks.end", [$#x$], anchor: "north", padding: "0.1")
          }
          content("set-3.start", [$x != -2 " ou " x != 0$], anchor: "east", padding: 0.2)
          line((-5, -3), (4.7, -3), stroke: 2.5pt+primary-color)
          circle((-2, -3), radius:3pt, stroke: 2.5pt+primary-color, fill: white)
          circle((0, -3), radius:3pt, stroke: 2.5pt+primary-color, fill: white)
        })
      ]
    ])

  + ${x | x^2 < 5} inter {x^2 - 1 "é um número par"}$
      #solution([
        O primeiro conjunto é facilmente identificável: $x^2 < 5 &=> -sqrt(5) < x < sqrt(5)$. Quanto ao segundo conjunto, observemos que
        $
          x^2 - 1 " é um número par" &=> x^2 - 1 = 2k " para " k in ZZ\
          &=> x^2 = 2k + 1 " para " k in ZZ\
          &=> x^2 "é um número ímpar"\
          &=> x "é um número ímpar"
        $

        #let xs = range(-5, 5).filter(x => calc.pow(x, 2) < 5 and calc.rem(calc.pow(x, 2)-1, 2) == 0)

        Então, 
        $
          {x | x^2 < 5} inter {x^2 - 1 "é um número par"} = {#xs.map(x => str(x)).join(", ")},
        $
        Portanto, $3 in.not {#xs.map(x => str(x)).join(", ")}$, como ilustra o diagrama seguinte:

        #figure()[
          #cetz.canvas({
            import cetz.draw: *

            line((-calc.sqrt(5), 0), (-calc.sqrt(5), -3), stroke: (dash: "dashed", paint: gray))
            line((calc.sqrt(5), 0), (calc.sqrt(5), -3), stroke: (dash: "dashed", paint: gray))

            line((-5, 0), (5, 0), mark: (end: ">>", fill: black), name: "set-1")
            content("set-1.end", [$x$], anchor: "north-west")
            for x in range(-4, 5) {
              line((x, 0.2), (x, -0.2), name: "ticks-1")
              content("ticks-1.end", [$#x$], anchor: "north", padding: 0.1)
              line((-calc.sqrt(5), 0), (calc.sqrt(5), 0), stroke: 2.5pt+primary-color)
            }

            for x in ((-calc.sqrt(5), "-"), ( calc.sqrt(5), "+")) {
              circle((x.at(0), 0), radius: 3pt, stroke: 2pt+primary-color, fill: white, name:"pt")
              content("pt", [$#x.at(1)sqrt(5)$], anchor: "south", padding: 0.3)
            }

            line((-5, -1.5), (5, -1.5), mark: (end: ">>", fill: black), name: "set-2")
            content("set-2.end", [$x$], anchor: "north", padding: 0.2)
            for x in range(-4, 5) {
              line((x, -1.3), (x, -1.7), name: "ticks")
              content("ticks.end", [$#x$], anchor: "north", padding: 0.1)
            }
            for x in range(-3, 5, step: 2) {
              circle((x, -1.5), radius: 4pt, fill: primary-color, stroke: none)
            }

            line((-5, -3), (5, -3), mark: (end: ">>", fill: black), name: "set-3")
            content("set-3.end", [$x$], anchor: "north-west")
            for x in range(-4, 5) {
              line((x, -2.8), (x, -3.2), name: "ticks")
              content("ticks.end", [$#x$], anchor: "north", padding: 0.1)
            }
            for x in range(-1, 2, step: 2) {
              circle((x, -3), radius: 4pt, fill: primary-color, stroke: none)
            }

          })
        ]
      ])
  + O conjunto vazio.
    #solution([
      $ 3 in.not emptyset $
    ])


+ Descreva todos os subconjuntos de cada um dos conjuntos:
  #set enum(numbering: "(a)")
  + O conjunto consistindo de 0 e 1.
    #solution([
      Seja $A = {0, 1}$. Sabendo que $A$ possui $n = 2$ elementos, devemos ter $2^n = 2^2 = 4$ subconjuntos, quais sejam:
      $
        emptyset, {0}, {1}, {0, 1}.
      $
    ])

  + O conjunto consistindo de uma caneta, um lápis e uma borracha.
    #solution([
      Seja $B = {"caneta", "lápis", "borracha"}$ um conjunto de $n = 3$ elementos. Temos $2^n = 2^3 = 8$ subconjuntos, como mostrado abaixo:
      $
        emptyset,\
        {"caneta"}, {"lápis"}, {"borracha"},\
        {"caneta", "lápis"}, {"caneta", "borracha"}, {"lápis", "borracha"},\
        {"caneta", "lápis", "borracha"} 
      $
    ])

  + O conjunto consistindo de todos os pares $(x, y)$, onde $x = 0$ ou $1$ e $y = 0$ ou $1$.
    #solution([
      Seja o conjunto 
      $
        C = {(x, y) | x in {0, 1} " e " y in {0, 1}} = {(0, 0), (0, 1), (1, 0), (1, 1)}.
      $
      Como o cojunto $C$ possui $n = 4$ elementos, terá $2^n = 2^4 = 16$ subconjuntos, quais sejam:
      $
        emptyset,\
        {(0, 0)}, {(0, 1)}, {(1, 0)}, {(1, 1)},\
        {(0, 0), (0, 1)}, {(0, 0), (1, 0)}, {(0, 0), (1, 1)}, {(0, 1), (1, 0)}, {(0, 1), (1, 1)}, {(1, 0), (1, 1)}, \
        {(0, 0), (0, 1), (1, 0)}, {(0, 0), (0, 1), (1, 1)}, {(0, 0), (1, 0), (1, 1)}, {(0, 1), (1, 0), (1, 1)},\
        {(0, 0), (0, 1), (1, 0), (1, 1)}.
      $


    ])

+ Para cada uma das seguintes desigualdades descreva o conjunto de números reais $x$ para os quais a desigualdade é válida:
  #let opts = (
    size: (5, 5), 
    axis-style: "school-book",
    x-tick-step: none, y-tick-step: none,
    //x-equal: "y",
  )
  #let line-styles = (
    stroke: 1pt+primary-color
  )
  #set enum(numbering: "(a)")
  + $x^2 < 4$
    #solution([
      $
        x^2 < 4 => x^2 - 4 < 0 => -2 < x < 2 => {x in RR| -2 < x < 2 }
      $

      #figure()[
        #cetz.canvas({
          import cetz.draw: *
          
          plot.plot(..opts, y-max: 3, {
            plot.add(
              style: line-styles,
              samples: 500, 
              domain: (-3, 3),
              x => calc.pow(x, 2) - 4
            )
            plot.annotate({
              //line((-2, 0.2), (-2, -0.2))
              content((-2, -0.2), [$-2$], anchor: "south-east", padding: 0.2)
            })
            plot.annotate({
              //line((2, 0.2), (2, -0.2))
              content((2, -0.2), [$2$], anchor: "south-west", padding: 0.2)
            })
            plot.add-fill-between(
              domain: (-2, 2),
              x => 0, 
              x => calc.pow(x, 2) - 4,
              style: (stroke: none, fill: primary-color.transparentize(85%))
            )
            plot.add(
              ((-2, 0), (2, 0),),
              mark: "o",
              style: (stroke: 2.5pt+primary-color),
              mark-style: (stroke: 1.5pt+primary-color, fill: white)
            )

            plot.annotate({
              circle((-3, 1), radius: 12pt, stroke: 1.2pt+primary-color, fill: white, name:"c1")
              content("c1", [#text(primary-color)[$+$]])
            })
            plot.annotate({
              circle((3, 1), radius: 12pt, stroke: 1.2pt+primary-color, fill: white, name:"c2")
              content("c2", [#text(primary-color)[$+$]])
            })
            plot.annotate({
              circle((0, -2), radius: 12pt, stroke: 1.2pt+primary-color, fill: white, name:"c3")
              content("c3", [#text(primary-color)[$-$]])
            })

            
          })
        })
      ]
    ])

  + $x(x - 1) <= 0$
    #solution([
      Inicialmente, determinemos os zeros de $f(x) = x(x-1)$:
      $
        f(x) = 0 &=> x(x-1) = 0 => 
        cases(
          x = 0 "ou",
          x - 1= 0
        ) => cases(
          x = 0 "ou",
          x = 1
        )
      $
      Note que a função $f(x) = x(x - 1)$ é uma parábola cujo coeficiente do termo $x^2$ é $a = 1 < 0$. Ou seja, uma parábola cujo vértice é um ponto de mínimo, como ilustra o esboço abaixo:
      #figure()[
        #cetz.canvas({
          import cetz.draw: *

          plot.plot(..opts, x-min: -0.4, x-max: 1.4, y-max: .5, name: "plot", {
            plot.add(
              style: line-styles,
              domain: (-1, 2),
              x => x * (x - 1)
            )
            plot.annotate({
              content((1, 0), [$1$], anchor: "south-west", padding: -0.08)
            })
            plot.add(
              ((0, 0), (1, 0), ),
              style: (stroke: 2.5pt+primary-color),
              mark: "o",
              mark-style: (stroke: 1.5pt+primary-color, fill: primary-color)
            )
            plot.add-fill-between(
              domain: (0, 1),
              x => 0, 
              x => x * (x - 1),
              style: (
                stroke: none,
                fill: primary-color.transparentize(85%)
              )
            )
            plot.add-anchor("p1", (-0.4, 0.2))
            plot.add-anchor("p2", (1.4, 0.2))
            plot.add-anchor("p3", (0.5, -0.1))
          })
          circle("plot.p1", radius: 10pt, stroke: 1.5pt+primary-color, fill: white)
          content("plot.p1", [#text(primary-color)[$+$]])
          circle("plot.p2", radius: 10pt, stroke: 1.5pt+primary-color, fill: white)
          content("plot.p2", [#text(primary-color)[$+$]])
          circle("plot.p3", radius: 10pt, stroke: 1.5pt+primary-color, fill: white)
          content("plot.p3", [#text(primary-color)[$-$]])
        })
      ]
      Portanto, 
      $
        x (x-1) <= 0 => {x in RR| 0 <= x <= 1}.
      $
    ])
  
  + $x (x - 1) > 0$
    #solution([
      Note que o lado esquerdo da desigualdade acima é idêntico ao da expressão do item (b). Conforme análise gráfica do sinal da função $f(x) = x(x-1)$,
      #figure()[
        #cetz.canvas({
          import cetz.draw: *

          plot.plot(..opts, x-min: -0.6, x-max: 1.6, y-max: .5, name: "plot", {
            plot.add(
              style: line-styles,
              domain: (-1, 2),
              x => x * (x - 1)
            )
            plot.annotate({
              content((1, 0), [$1$], anchor: "south-west", padding: -0.08)
            })
            plot.add(
              ((0, 0), (1, 0), ),
              style: (stroke: 2.5pt+primary-color),
              mark: "o",
              mark-style: (stroke: 1.5pt+primary-color, fill: white)
            )
            plot.add-fill-between(
              domain: (-.6, 0),
              x => 0, 
              x => x * (x - 1),
              style: (
                stroke: none,
                fill: primary-color.transparentize(85%)
              )
            )
            plot.add-fill-between(
              domain: (1, 1.6),
              x => 0, 
              x => x * (x - 1),
              style: (
                stroke: none,
                fill: primary-color.transparentize(85%)
              )
            )
            plot.add-anchor("p1", (-0.4, 0.2))
            plot.add-anchor("p2", (1.4, 0.2))
            plot.add-anchor("p3", (0.5, -0.1))
          })
          circle("plot.p1", radius: 10pt, stroke: 1.5pt+primary-color, fill: white)
          content("plot.p1", [#text(primary-color)[$+$]])
          circle("plot.p2", radius: 10pt, stroke: 1.5pt+primary-color, fill: white)
          content("plot.p2", [#text(primary-color)[$+$]])
          circle("plot.p3", radius: 10pt, stroke: 1.5pt+primary-color, fill: white)
          content("plot.p3", [#text(primary-color)[$-$]])
        })
      ] 
      Portanto, 
      $
        x (x - 1) > 0 => {x in RR | x < 0 "ou" x > 1}
      $
    ])

  + $(x - 1)(x - 2) < 0$
    #solution([
      consideremos a função $f(x) = (x-1)(x-2)$. 
      Iniciamos determinando os zeros de $f(x)$:
      $
        f(x) = 0 => (x-1)(x-2) = 0 => 
        cases(
          x-1 = 0 "ou",
          x-2=0
        ) => cases(
          x = 1 "ou",
          x = 2
        )
      $
      Reescrevendo $f(x)$ como $f(x) = x^2 -3x + 2$, temos que o coeficiente do termo $x^2$ é igual a $1 < 0$, ou seja, o gráfico da função é uma parábola com concavidade voltada para cima. 

      O seguinte esboço do gráfico de $f(x)$ mostra o estudo do sinal da função:

      #figure()[
        #cetz.canvas({
          import cetz.draw: *

          plot.plot(..opts, x-min: -.25, x-max: 3.25,  y-max: 2.5, name: "plot", {
            plot.add(
              domain: (-1, 4),
              x => (x - 1)*(x - 2),
              style: line-styles
            )
            plot.add-fill-between(
              domain: (1, 2),
              x => 0, x => (x - 1)*(x - 2),
              style: (stroke: none, fill: primary-color.transparentize(85%))
            )
            plot.add(
              ((1, 0), (2, 0),),
              mark: "o",
              mark-style: (stroke: 1.5pt+primary-color, fill: white),
              style: (stroke: 2.5pt+primary-color)
            )
            plot.annotate({
              content((1, 0), [$1$], anchor: "south-east", padding: 0.02)
              content((2, 0), [$2$], anchor: "south-west", padding: 0.02)
            })
            plot.add-anchor("pt1", (0.3, 0.5))
            plot.add-anchor("pt2", (2.7, 0.5))
            plot.add-anchor("pt3", (1.5, -0.08))
            plot.add-anchor("pt4", (2.5, -0.5))
          })
          circle("plot.pt1", radius: 8pt, stroke: primary-color, fill: white)
          content("plot.pt1", [#text(primary-color)[$+$]])
          circle("plot.pt2", radius: 8pt, stroke: primary-color, fill: white)
          content("plot.pt2", [#text(primary-color)[$+$]])
          line("plot.pt3", "plot.pt4", mark: (start: ">"), name: "line", fill: primary-color, stroke: primary-color)
          circle("plot.pt4", radius: 8pt, stroke: primary-color, fill: white)
          content("plot.pt4", [#text(primary-color)[$-$]])
        })
      ]
      Portanto, 
      $
        (x-1)(x-2) < 0 => {x in RR | 1 < x < 2}.
      $
    ])

  + $x^2 + x + 1 > 0$
    #solution([
      Façamos o estudo do sinal da função $f(x) = x^2 + x + 1$. Inicialmente, determinemos as raízes ou zeros de $f(x)$. Sejam $a = 1$, $b = 1$ e $c = 1$ respectivamente os coeficientes dos termos $x^2$, $x$ e termo independente do polinômio de segundo grau. Então, as raízes de $f(x)$ são
      $
        f(x) = 0 => x^2 + x + 1 = 0 => &x  = (-b plus.minus sqrt(b^2 - 4 a c))/(2 a) \
        &=> x= (-1 plus.minus sqrt(1^2 - 4 dot 1 dot 1))/(2 dot 1)\
        &=> x= (-1 plus.minus sqrt(-3))/2
      $ 
      
      Note que não existem raízes reais. Logo, a parábola não toca o eixo horixontal (eixo $x$) em nenhum ponto. Para completar a análise, observemos que o coeficiente $a = 1$ é negatico. Isso significa que a parábola  possui ponto de mínimo e concavidade voltada para cima. O esboço seguinte ilustra o estudo do sinal de $f(x)$:

      #figure()[
        #cetz.canvas({
          import cetz.draw: *

          plot.plot(..opts, x-min: -2.5, x-max: 1.5,  y-min: -.5,  name: "plot", {
            plot.add(
              domain: (-2.5, 1.5),
              x => calc.pow(x, 2) + x + 1,
              style: line-styles
            )
            plot.add-fill-between(
              domain: (-2.5, 1.5),
              x => 0,
              x => calc.pow(x, 2) + x + 1,
              style: (stroke: none, fill: primary-color.transparentize(85%))
            )
            plot.add-anchor("pt", (-0.5, 0.4))
            plot.add(
              domain: (-2.5, 1.5),
              x => 0,
              style: (stroke: 2.5pt+primary-color)
            )
          })
          circle("plot.pt", radius: 7pt, stroke: primary-color, fill: white)
          content("plot.pt", [#text(primary-color)[$+$]])
        })
        Portanto, $x^2 + x + 1 > 0 => {x | x in RR}$.
      ]

      
    ])

  + $display(x/(x - 1)) >= 0$
    #solution([
      Trata-se de uma inequação racional da forma $p(x)\/q(x)$ em que $p(x)$ e $q(x)$ são polinômios e $q(x) != 0$. Para resolvê-la, seguimos o procedimento:
      - Determinação dos pontos críticos de $p(x)$ e $q(x)$:
      $
        cases(
          p(x) = 0 => x = 0,
          q(x) = 0 => x - 1 = 0 => x = 1
        )
      $
      - Análise de sinais:

      #figure()[
        #cetz.canvas({
          import cetz.draw: *

          scale(x: 250%)

          let expr = ($x >= 0$, $x - 1 >= 0$, $display(x/(x-1)) >= 0$)
          let y = (0, -1.5, -3)
          let dy = (0.0, 0.0, -0.1)

          for x in (0, 1) {
            line((x, y.at(0)+.8), (x, y.at(2)-.8), stroke: (dash: "dashed", paint: gray))
          }

          for i in range(3) {
            line((-2.5, y.at(i)), (2.5, y.at(i)), mark: (end: ">>", fill: black), name: "eixo-x")
            content("eixo-x.end", [$x$], anchor: "north", padding: 0.05)
            for x in range(-2, 3) {
              line((x, y.at(i) + 0.1), (x, y.at(i) - 0.1), name: "tick")
              content("tick", [$#x$], anchor: "north", padding: 0.2)
            }
            content((-3.5, y.at(i) + dy.at(i)), [$#expr.at(i)$], anchor: "west", padding: 0.5)
          }
          for j in range(17) {
            let x = -2 + 0.25 * j
            let sinal_1 = if x < 0 {
              $-$
            } else if x == 0 {
              $$
            } else {
              $+$
            }
            let sinal_2 = if x < 1 {
              $-$
            } else if x == 1 {
              $$
            } else {
              $+$
            }
            let sinal_3 = if x < 1 {
              $-$
            } else if x == 1 {
              $$
            } else {
              $+$
            }
            content((x, y.at(0)), [#text(primary-color)[#sinal_1]], anchor: "south", padding: 0.2)
            content((x, y.at(1)), [#text(primary-color)[#sinal_2]], anchor: "south", padding: 0.2)
            content((x, y.at(2)), [#text(primary-color)[#sinal_3]], anchor: "south", padding: 0.2)
          }
          line((0, y.at(0)), (2.4, y.at(0)), stroke: 2.5pt+primary-color)
          circle((0, y.at(0)), radius: (1.6pt, 4pt), fill: primary-color, stroke: 2pt+primary-color)
          line((1, y.at(1)), (2.4, y.at(1)), stroke: 2.5pt+primary-color)
          circle((1, y.at(1)), radius: (1.6pt, 4pt), fill: white, stroke: 2pt+primary-color)
          line((1, y.at(2)), (2.4, y.at(2)), stroke: 2.5pt+primary-color)
          circle((1, y.at(2)), radius: (1.6pt, 4pt), fill: white, stroke: 2pt+primary-color)
        })
      ]
      Portanto, 
      $
        x/(x-1) >= 0 => {x in RR | x > 1}
      $
    ])
  

