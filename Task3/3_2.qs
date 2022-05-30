namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    operation Solve(qs: Qubit[]) : Int {
        body {   
            mutable one = 0;
            for (q in qs) {
                if (M(q) == One) { 
                    set one = one + 1; 
                }
            }
            if (one == 1) {
                return 1;
            } else {
                return 0;
            }                
        }
    }
}