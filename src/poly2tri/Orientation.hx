package poly2tri;

class Orientation
{
    inline public static var CW = 1;
    inline public static var CCW = -1;
    inline public static var COLLINEAR = 0;

    public static inline function orient2d(pa:Point, pb:Point, pc:Point):Int
    {
        var detleft:Float  = (pa.x - pc.x) * (pb.y - pc.y);
        var detright:Float = (pa.y - pc.y) * (pb.x - pc.x);
        var val:Float = detleft - detright;

        if ((val > -Constants.EPSILON) && (val < Constants.EPSILON)) return Orientation.COLLINEAR;
        if (val > 0) return Orientation.CCW;
        return Orientation.CW;
    }
}