class Main inherits IO {
    a : Int <- 2;
    b : Int <- 5;
    c : Int <- 8;
    main() : SELF_TYPE {
	{
	    a <- a + b * c;
        out_int(a);
        self;
	}
    };
};