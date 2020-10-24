.IS

...libfile circle

...minx -1
...maxx 6
...miny -1
...maxy 12


box spot {

  var loc;

  put circle {
    var center, radius;
    center = loc;
    radius = 0.02;
    opaque;
    }
  }


box vert {

  var midd, llength;

  conn midd + llength to midd - llength;
  }


box poly {

  var c1, p1, p2, p3, p4, p5, r1, tp, bp, ta, tb;

  p1 = c1 + r1;
  p2 = cis(65)[c1, p1];
  p3 = cis(170)[c1, p1];
  p4 = cis(190)[c1, p1];
  p5 = cis(300)[c1, p1];
  tp = c1 + (0, ta)*r1;
  bp = c1 + (0, tb)*r1;

  conn p1 to p2;
  conn p2 to p3;
  conn p3 to p4;
  conn p4 to p5;
  conn p5 to p1;

  put vert { midd = c1; llength = (0, 1.6)*r1; }
  put spot { loc = tp; }
  put spot { loc = bp; }

  left '$P12$' at tp + 0.1;
  left '$P21$' at bp + 0.1;
  }


main {

  put poly {

    c1 = (1, 9);
    r1 = (1, 0);
    ta = 1.1;
    tb = 1.4;

    left '$++--$' at p2 - 1.5;
    right '(a)' at c1 - (0.7, 1.2);
    }

  put poly {

    c1 = (3.5, 9);
    r1 = (1, 0);
    ta = 1.1;
    tb = 0.2;

    left '$+---$' at p2 + 0.5;
    right '(b)(b1)' at c1 - (0.7, 1.2);
    }

  put poly {

    c1 = (1, 5);
    r1 = (1, 0);
    ta = 1.1;
    tb = -1;

    left '$+--+$' at p2 - 1.5;
    left '$-++-$' at p2 - (1.5, 0.15);
    right '(c)(c1)' at c1 - (0.7, 1.2);
    }

  put poly {

    c1 = (3.5, 5);
    r1 = (1, 0);
    ta = 0.2;
    tb = -1;

    left '$---+$' at p2 + (0.5, -0.3);
    left '$--+-$' at p2 + (0.5, -0.45);
    right '(d)(d1)' at c1 - (0.7, 1.2);
    }

  put poly {

    c1 = (1, 1);
    r1 = (1, 0);
    ta = -1;
    tb = -1.4;

    left '$--++$' at p4 - (0, 0.5);
    right '(e)' at c1 - (0.7, 1.2);
    }

  put poly {

    c1 = (3.5, 1);
    r1 = (1, 0);
    ta = 0.2;
    tb = -0.2;

    left '$----$' at p1 + 0.2;
    right '(f)' at c1 - (0.7, 1.2);
    }

  }
  
.IE
