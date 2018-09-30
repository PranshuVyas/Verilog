// Name: Pranshu Vyas ID: 214228001

module labK;

   reg a, b, c, flag;
   wire notOutput, lowerInput;
   wire firstAndOut, firstAndIn;
   wire secondAndOut, secondAndIn;

   not (notOutput, c);
   and (firstAndOut, a, lowerInput);
   and (secondAndOut, c, b);
   or (z, firstAndIn, secondAndIn);
   assign lowerInput = notOutput;
   assign firstAndIn = firstAndOut;
   assign secondAndIn = secondAndOut;

   initial
     begin
        flag = $value$plusargs("a=%b", a);
        if (flag === 0)
          $display("Warning: argument a is missing.");

        flag = $value$plusargs("b=%b", b);
        if (flag === 0)
          $display("Warning: argument b is missing.");

        flag = $value$plusargs("c=%b", c);
        if (flag === 0)
          $display("Warning: argument c is missing.");

        #1; // wait for z
        $display("a=%b b=%b c=%b z=%b", a, b, c, z);
        $finish;
     end

endmodule
