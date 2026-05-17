disp("Functions that convert a string into a vector of ASCII codes. Example string: 'Octave'")
s = "Octave";

disp("Result of abs():")
abs(s)

disp("Result of double():")
double(s)

disp("Result of uint8():")
uint8(s)

disp("Functions that compare strings. Example strings 'test' and 'Test'")

s = 'test'
S = 'Test'

disp("Result of strcmp():")
strcmp(s, S)

disp("Result of strcmpi():")
strcmpi(s, S)

disp("Function that matches a pattern against a string")
strfind("This test is interesting. And 'interesting' is a vague concept", "test")
