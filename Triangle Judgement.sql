SELECT 
    *,
    IF(x+y>z and y+z>x and x+z>y, "Yes", "No") AS triangle
FROM 
    Triangle;
