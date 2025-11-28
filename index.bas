' Aspect ratio is relation between width-height of a circle,
' for example:
' aspect = 1   = Perfect circle;
' aspect = 1.5 = Stretch circle vertically (ellipse);
' aspect = 0.5 = Stretch circle horizontally (ellipse);
' let's draw perfect circles for the flower:
Const ASPECT_RATIO = 0.5
' define parameters for main circle:
Const CENTER = [350, 350] ' [x, y] define the center point to draw a circle
Const RADIUS = 250         ' radius in pixels (pixel is a single point)
Const TEXT = "Smile!"     ' text to print in the middle of main circle
' define parameters for leafs:
Const LEAF_RADIUS = 30    ' using smaller circles for leafs
' center point for straight leafs (distance from main circle's center):
Const LEAF_CENTER_STRAIGHT   = RADIUS + LEAF_RADIUS
' rotate center point for transverse leafs (distance as above):
Const LEAF_CENTER_TRANSVERSE = LEAF_CENTER_STRAIGHT * Sin(Rad(45))
' Start the program:
Print " Press any key to draw leaf by leaf...";
Pause
Cls
' draw one invisible point to set the 'current position':
Pset CENTER Color 0
' let's use shorter variable names (easier to read):
a = ASPECT_RATIO
r = LEAF_RADIUS
' draw the straight leafs (relative to the 'current position'):
c = LEAF_CENTER_STRAIGHT
Circle Step 0, -c, r, a Color 15 FILLED: Pause ' top
Circle Step 0, +c, r, a Color 14 FILLED: Pause ' down
Circle Step -c, 0, r, a Color 13 FILLED: Pause ' left
Circle Step +c, 0, r, a Color 12 FILLED: Pause ' right
' draw the transverse leafs (relative to the 'current position'):
c = LEAF_CENTER_TRANSVERSE
Circle Step -c, -c, r, a Color 11 FILLED: Pause ' top-left
Circle Step +c, +c, r, a Color  8 FILLED: Pause ' down-right
Circle Step +c, -c, r, a Color 10 FILLED: Pause ' top-right
Circle Step -c, +c, r, a Color  9 FILLED: Pause ' down-left
' draw the main circle:
Circle CENTER, RADIUS, ASPECT_RATIO Color 14
' print text in the middle of main circle:
At CENTER(0) - (Txtw(TEXT) \ 2), CENTER(1) - (Txth(TEXT) \ 2)
Color 5: Print TEXT;
