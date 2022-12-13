ultimo([A], A).
ultimo([_ | N], U) :- ultimo(N, U).
