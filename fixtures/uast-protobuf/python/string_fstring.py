a = 42
b = 3.14
f"This is an fstring with an {a} inserted parameter"
f"Another with {a!s} tostring indicator"
f"Another with {a!r} repr indicator"
f"Another with {a!a} ascii indicator"
f"Another with {b:{2}.{3}} width and precission float indicator"

def somefunc(i): return i*2
f"Another with {somefunc(10)} an embedded call"
f"Another with {'pok'.upper()} an embedded expression"

