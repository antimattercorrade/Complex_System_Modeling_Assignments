to setup
  ca
  reset-ticks
  create-turtles 100
  ask turtles [set color random 139 setxy random-xcor random-ycor]

end

to Q1

  let green-turtles turtles with [color = green]
  print "Q1: Green Turtles"
  print "Count 1:"
  print count turtles with [color = green]
  print "Count 2:"
  print count green-turtles

end

to Q2

  let green-shade-turtles turtles with [color >= 50 and color <= 59.9]
  print "Q2: All shades of Green"
  print "Count 1"
  print count turtles with [color >= 50 and color <= 59.9]
  print "Count 2"
  print count green-shade-turtles

end

to Q3

  let patch-atleast patches with [count turtles-here >= 1]
  ask patch-atleast [set pcolor yellow]
  print "Q3: Patches with atleast one turtle"
  print "Count 1"
  print count patches with [count turtles-here >= 1]
  print "Count 2"
  print count patch-atleast

end

to Q4

  let patch-no-turtle patches with [count turtles-here = 0]
  ask patch-no-turtle [set pcolor white]
  print "Q4: Patches with no turtle"
  print "Count 1"
  print count patches with [count turtles-here = 0]
  print "Count 2"
  print count patch-no-turtle

end

to Q5

  let patch-two-turtle patches with [count turtles-here = 2]
  ask patch-two-turtle [set pcolor blue]
  print "Q5: Patches with two turtle"
  print "Count 1"
  print count patches with [count turtles-here = 2]
  print "Count 2"
  print count patch-two-turtle

end

to Q6

  let turtle-lower-right turtles with [xcor >= 0 and ycor <= 0]
  ask turtle-lower-right [set color red]
  print "Q6: Turtles in lower right quadrant"
  print "Count 1"
  print count turtles with [xcor >= 0 and ycor <= 0]
  print "Count 2"
  print count turtle-lower-right

end

to Q7

  let radius-3-turtles turtles in-radius 3
  show radius-3-turtles

end

to Q8

  let radius-3-turtles-except turtles in-radius 3 with [ who != [who] of myself ]
  show radius-3-turtles-except

end

to Q10

  let directed-link-turtles turtle-set [other-end] of my-out-links with [is-directed-link? self]
  show directed-link-turtles

end

to Q11

  let undirected-link-turtles turtle-set [other-end] of my-links with [is-undirected-link? self]
  show undirected-link-turtles

end

to Q12

  let turtles-on-neighbor-patches turtles-on patch-set [neighbors] of turtle-set [other-end] of my-out-links with [is-directed-link? self]
  show turtles-on-neighbor-patches

end

to Q14

  let within-radius-5-turtles turtles in-radius 5
  show within-radius-5-turtles

end

to Q15

  let radius-5-turtles-onpatches turtles-on patches in-radius 5
  show radius-5-turtles-onpatches

end

to Q10-Q12-setup

  ca
  create-turtles 100
  ask turtles [set color random 139 setxy random-xcor random-ycor]
  ask n-of random 100 turtles [ create-links-to n-of random 5 turtles with [who != [who] of myself] ]

end

to Q11-setup

  ca
  create-turtles 100
  ask turtles [set color random 139 setxy random-xcor random-ycor]
  ask n-of random 100 turtles [ create-links-with n-of random 5 turtles with [who != [who] of myself] ]

end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
610
411
-1
-1
11.9
1
10
1
1
1
0
0
0
1
-16
16
-16
16
0
0
1
ticks
30.0

BUTTON
66
29
129
62
NIL
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
21
180
87
214
NIL
Q1
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
44
129
164
163
NIL
Q11-setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
114
442
185
478
NIL
Q14
NIL
1
T
PATCH
NIL
NIL
NIL
NIL
1

BUTTON
20
341
88
377
NIL
Q7
NIL
1
T
TURTLE
NIL
NIL
NIL
NIL
1

BUTTON
117
345
185
380
NIL
Q8
NIL
1
T
TURTLE
NIL
NIL
NIL
NIL
1

BUTTON
21
390
87
427
NIL
Q10
NIL
1
T
TURTLE
NIL
NIL
NIL
NIL
1

BUTTON
115
391
185
428
NIL
Q11
NIL
1
T
TURTLE
NIL
NIL
NIL
NIL
1

BUTTON
20
440
89
476
NIL
Q12
NIL
1
T
TURTLE
NIL
NIL
NIL
NIL
1

BUTTON
44
76
162
109
NIL
Q10-Q12-setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
64
492
136
530
NIL
Q15
NIL
1
T
PATCH
NIL
NIL
NIL
NIL
1

BUTTON
118
182
190
221
NIL
Q2
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
20
239
90
274
NIL
Q3
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
120
240
188
278
NIL
Q4
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
21
290
89
325
NIL
Q5
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
117
294
186
333
NIL
Q6
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## Instructions

`setup` procedure is to be used to setup the world for questions 1 to 8 and 14,15.
`Q10-Q12-setup` procedure is to be used for setting up the world for questions 10 and 12.
`Q11-setup` procedure is to be used for setting up the world for question 11.
The procedures Q1 to Q6 are run in observer context, Q7 to Q12 in turtle context and Q14, Q15 in patch context.

## Validation

### Question 1

The agentset of turtles having green color is created and the count of turtles having green color is shown using the agentset and using the proper command. Same count can be seen for both the cases on each run.

### Question 2

The agentset of turtles having green shade color is created and the count of turtles having green shade color is shown using the agentset and using the proper command. Same count can be seen for both the cases on each run.

### Question 3

The agentset of patches having atleast one turtle is created and the count of patches having atleast one turtle is shown using the agentset and using the proper command. Same count can be seen for both the cases on each run. All the patches in the found agentset are colored yellow for validation.

### Question 4

The agentset of patches having no turtle is created and the count of patches having no turtle is shown using the agentset and using the proper command. Same count can be seen for both the cases on each run. All the patches in the found agentset are colored white for validation.

### Question 5

The agentset of patches having exactly two turtles is created and the count of patches having exactly two turtles is shown using the agentset and using the proper command. Same count can be seen for both the cases on each run. All the patches in the found agentset are colored blue for validation.

### Question 6

The agentset of turtles in the lower right quadrant is created and the count of turtles in the lower right quadrant is shown using the agentset and using the proper command. Same count can be seen for both the cases on each run. All the turtles in the found agentset are colored red for validation.

### Question 7

The agentset for turtles within a radius of 3 pacthes is created using the command `turtles in-radius 3`.


### Question 8

The agentset for turtles within a radius of 3, except the calling turtle is created using the command `turtles in-radius 3 with [ who != [who] of myself ]`. The matching of `who` id ensures that the calling turtle is not added to the set.

### Question 10

The agentset for turtles that have directed links from the calling turtle is created using the command `turtle-set [other-end] of my-out-links with [is-directed-link? self]`. First an agentset of links is created using `my-out-links with [is-directed-link? self]` part which considers only directed out links from calling turtle. Then the turtle on the other-end of the links is found and an agentset is created out of those turtles and returned.


### Question 11

The agentset for turtles that have undirected links from the calling turtle is created using the command `turtle-set [other-end] of my-links with [is-undirected-link? self]`. First an agentset of links is created using `my-links with [is-undirected-link? self]` part which considers only undirected links from calling turtle. Then the turtle on the other-end of the links is found and an agentset is created out of those turtles and returned.

### Question 12

The agentset for turtles on patches neighboring all the patches that contain turtle with a directed link from the calling turtle is created using the command `turtles-on patch-set [neighbors] of turtle-set [other-end] of my-out-links with [is-directed-link? self]`. First an agentset of links is created using `my-out-links with [is-directed-link? self]` part which considers only directed out links from calling turtle. Then the turtle on the other-end of the links is found and an agentset is created out of those turtles. The neighbors of these turtles are found and a patchset is created for the neighboring patches and finally the agentset of turtles are returned on these patches.

### Question 14

The agentset for turtles within a radius of 5 patches of the patch’s center is created using the command `turtles in-radius 5`. The procedure is run in patch context.

### Question 15

The agentset for turtles on patches within a radius of 5 of the patch’s center is created using the command `turtles-on patches in-radius 5`. The procedure is run in patch context.

@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
