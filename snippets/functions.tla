Range(f) == {f[x]: x \in DOMAIN f}
f $ set == {f[x]: x \in set} \* probably poor use of an infix

\* Kludges enumerations.
\* state == Enum({"On", "Off", "Broken"}) gives you state.On, state.Off, state.Broken
Enum(set) == [x \in set |-> x]
