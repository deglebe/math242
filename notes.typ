#import "@preview/noteworthy:0.2.1": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "MATH 242 Notes",
  author: "Thomas Bruce",
  contact-details: "https://deglebe.com", // Optional: Maybe a link to your website, or phone number
  toc-title: "Table of Contents",
)

//#outline()

#pagebreak()

= "duhs"

the duhs are things that we just need to remember. these should be muscle memory, no questions asked, no math involved:

#table(
  columns: (auto, auto, auto),
  align: horizon,
  table.header(
    [$f$], [$(d f)/(d x)$], [long form]
  ),
  $sin(x)$, $cos(x)$, $integral cos(x) d x = sin(x) + C$,
  $cos(x)$, $-sin(x)$, $integral sin(x) d x = -cos(x) + C$,
  $x$, $1$, $integral d x = x + C$,
  $e^x$, $e^x$, $integral e^x d x = e^x + C$,
  $tan(x)$, $sec^2(x)$, $integral sec^2(x) d x = tan(x) + C$,
  $ln(x)$, $1/x$, $integral 1/x d x = ln|x| + C$,
  $arctan(x)$, $1/(1+x^2)$, $integral 1/(1+x^2) d x = arctan(x) + C$
)

it isn't quite a duh but the fundamentally important rule for quick integration is the power rule:

$d/(d x) x^n = n x^(n-1) \
==> d/(d x) (x^(n+1))/(n+1) = x^n$

so from this we can discern:

$ integral x^n d x := cases(
  (x^(n+1))/(n+1) + C "if" n != -1,
  ln|x| + C "if" n = -1,
) $

#pagebreak()

= u-substitution

how do we solve this?

$ integral x (x^2 + 1)^50 d x $

u-sub is "the chain rule in reverse"

u-sub has 6 steps (in the context of the given problem):

1. $u = x^2 + 1$ : identify the u (this is our u-sub we work with)
2. $(d u)/(d x) = 2x$ : now we find the u'
3. $d u = 2x d x$ : now we find the du alone
4. $1/2 integral u^50 d u$ : putting it back into context
5. $1/2 (u^51)/51 + C$ : "solved"
6. $1/2 (x^2 + 1)^51/51 + C$ : back-substitution

done.

an example:

$ integral e^(10x) d x $
$ u = 10x ==> (d u)/(d x) = 10 ==> d u = 10 d x $

#pagebreak()

= integration by parts

this is in stewart calc ch7.1

$ integral (u v)' = integral u' v + integral u v' $
$ u v = integral v d u + integral u d v $
$ integral u d v = u v - integral v d u $

memorize:

$ integral u d v = u v - integral v d u $

worked example:

$ integral x ln x d x $
$ u = ln x "and" d v = x d x $
$ d u = 1 / x d x "and" v = (x^2)/2 $
as per the formula:
$ integral u d v &= u v - integral v d u \
integral x ln x d x &= (x^2)/2 ln x integral (x^2)/2 dot 1/x d x \
&= (x^2)/2 ln x - integral 1/2 x d x \
&= (x^2)/2 ln x - (x^2)/4 + C $

== integrating ln(x)

$ integral ln x d x $
$ u = ln x "and" v = x $
$ d u = 1/x d x "and" d v = d x $
$ integral ln x d x &= ln(x) x - integral x dot 1/x d x \
&= x ln x - x + C $

= partial fractions

$ 21/35 = A/5 + B/7 = (7 A + 5 B)/35 $
$ 7 A + 5 B = 21 $

this is an underdetermined system of equations, because the answers to what A and B are are not uniquely determined

Ex:
$ integral 2 / (x^2-2x) d x $
$ 2/(x^2-2x) = 2/(x(x-2)) = A/x + B/(x-2) $
$ 2 / cancel(x(x-2)) = (A(x-2)+B x)/cancel(x(x-2)) $

and now you have a simple system to solve

$ A x - 2A + B x = U x + Z $
$ A + B &= 0 \
-2A &= 2 $
$ => A = -1, B = 1 $

(this may also be done with reduced row echelon form as long as a proper identity matrix can be formed on the left side of the matrix. if your name is noah "alex" yurasko, you can probably do this method)

returning to the integral:

$ = integral (-1/x + 1/(x-2)) d x $
$ = - ln|x| + ln|x-2| + C $

there are some cases where this is useful:

1. denominator has distinct linear factors (factors do not result in a power)
(he only wrote one case)

#pagebreak()

== worked example with 3 terms

$ integral (x^2+2x+1)/(2x^3+2x-2) d x $

(going to put this example in later, i have it in notebook)

== worked second example

$ integral (x^2+1)/((x-1)(x-2)(x-3)) d x $
$ A/(x-1) + B/(x-2) + C/(x-3) = A(x-2)(x-3) + B(x-1)(x-3) + C(x-1)(x-2) $
(noah has this to be inserted TODO)

== repeated roots

$ integral (6x+7)/(x+2)^2 $
$ (6x+7)/(x+2)^2 =  $

#pagebreak()

= appendix

== rules from 05/02

$ d/(d x) tan(x) = sec^2(x) $
$ d/(d x) cot(x) = -csc^2(x) $
$ d/(d x) sec(x) = sec(x)tan(x) $
$ d/(d x) csc(x) = csc(x)cot(x) $

== identities from 05/02

$ sin^2(x) = (1-cos(2x))/2 $
$ ln (a^r) = r ln (a) $
$ sin^2(x) + cos^2(x) = 1 $
$ cos^2(x) = (1+cos(2x))/2 $
$ tan^2(x) + 1 = sec^2(x) $

== integrals from 05/02

$ integral tan^2(x) \
  &= integral sec^2(x) - 1 d x \
  &= tan(x) - x + C $

== table of trigonometric substitutions

#table(
  columns: (auto, auto, auto),
  align: horizon,
  table.header(
    [expression], [substitution], [identity]
  ),


)
