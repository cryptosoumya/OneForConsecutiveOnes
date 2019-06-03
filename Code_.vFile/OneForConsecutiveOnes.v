module OneForConsecutiveOnes(
    output reg [7:0]count,
    input clk,rst,din
    );
    reg [2:0]state;
    reg [2:0]i;
   // reg din;
    always @(posedge clk)
    begin
        if(rst)
        begin
            state<=0;
            count<=0;
            i<=0;  
        end
        else
        begin
            case(state)
            0:
            begin
            if(din==1)
            begin
            state<=1;
            count<=1;
            end
            end
            1:
            begin
            if(din==1)
            begin
            state<=1;
            count<=count;
            end
            else
            begin
            state<=2;
            count<=count;
            end
            end
            2:
            begin
            if(din==1)
            begin
            state<=3;
            count<=count;
            end
            else
            begin
            state<=state;
            count<=count;
            end
            end
            3:
            begin
            if(din==1)
            begin
            state<=3;
            count<=count;
            end
            else
            begin
            state<=4;
            count<=count+1;
            end
            end
            4:
            begin
            if(din==1)
            state<=3;
            else
            state<=2;
            end
            endcase
    end
    end
    /*always @ (posedge clk)
    begin
    din=in[i];
    i=i+*/
endmodule
