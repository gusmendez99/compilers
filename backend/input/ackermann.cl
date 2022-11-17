class Main inherits IO {
    m: Int <- 3;
    n: Int <- 2;

    ackermann(m : Int, n: Int) : Int {
        if m=0 then n+1 else
            if n=0 then ackermann(m-1, 1) else
                ackermann(m-1, ackermann(m, n-1))
            fi         
        fi     
    };

    main(): SELF_TYPE {
        out_int(ackermann(m, n));
    };
};
