.IS

box wavy {

  var start, end, perp, pt1, pt2, ht;

  perp = (0, 1)*(start - end)/abs(start - end);
  pt1 = 0.25[start, end] + perp*ht;
  pt2 = 0.75[start, end] - perp*ht;

  conn start to pt1 to pt2 to end;
  }

.IE
