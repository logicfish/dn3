module dn3.turtle;

private import dn3;
private import pegged.grammar;

mixin(grammar(import("turtle.peg")));

auto parseTurtleFile(string fname)() {
    return TurtleDocument(import(fname));
}

unittest {
    import std.stdio;
    writeln(parseTurtleFile!"data.ttl");
}
