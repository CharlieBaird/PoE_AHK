brain := 32
eye := 25
lung := 22
heart := 35
liver := 35

^0::
 CoordMode, ToolTip, Screen ; makes tooltip to appear at position, relative to screen.
 CoordMode, Mouse, Screen ; makes mouse coordinates to be relative to screen.
 tooltip Brain: %brain%`nEye: %eye%`nLung: %lung%`nHeart: %heart%`nLiver: %liver%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.

return

^1::
brain+=3
tooltip Brain: %brain%`nEye: %eye%`nLung: %lung%`nHeart: %heart%`nLiver: %liver%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.
return

^2::
eye+=3
tooltip Brain: %brain%`nEye: %eye%`nLung: %lung%`nHeart: %heart%`nLiver: %liver%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.
return

^3::
lung+=3
tooltip Brain: %brain%`nEye: %eye%`nLung: %lung%`nHeart: %heart%`nLiver: %liver%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.
return

^4::
heart+=3
tooltip Brain: %brain%`nEye: %eye%`nLung: %lung%`nHeart: %heart%`nLiver: %liver%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.
return

^5::
liver+=3
tooltip Brain: %brain%`nEye: %eye%`nLung: %lung%`nHeart: %heart%`nLiver: %liver%, 0, 0 ; display tooltip of %xx% %yy% at coordinates x0 y0.
return




F4::
Reload
Return