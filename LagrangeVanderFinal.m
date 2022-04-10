x = input('Enter the values of x:');
y = input('Enter the values of y:');
disp([x; y])
V = vander(x);
disp('The Vandermode matrix is:')
disp(V)
c = V\y';
disp('The coefficients of the polynomial are:')
disp(c)

d=input('To validate the polynomial, press `1`; press any other key to quit: \n');

if d==1
    poly = [c];
    a = input('Enter the value of x at the point: x=');
    b = input('Enter the expected value of f(x) at the point: y=');
    v = polyval(poly, a);
    disp('The obtained value is:')
    disp(v)
    if v==b
        disp('The expected value and the obtained values match.')
    else
        disp('The obtained value does not match the expected value.(Might be an incorrect statement based on significant figures. Check manually to verify.)')
    end
else
    disp('The polynomial is:')
    disp(c)
end



