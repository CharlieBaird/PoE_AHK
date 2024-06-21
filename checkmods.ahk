~LShift & ~LButton Up::
Random ranSleep, 115, 150
sleep %ranSleep%
PixelGetColor, Pxc1, 291, 403, RGB
if Pxc1 = 0xE7B477
{
    MouseMove, 383, 472
}