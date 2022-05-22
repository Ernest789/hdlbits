/*
The following code contains incorrect behaviour that creates a latch. 
Fix the bugs so that you will shut off the computer only if it's really overheated, 
and stop driving if you've arrived at your destination or you need to refuel.

always @(*) begin
    if (cpu_overheated)
       shut_off_computer = 1;
end

always @(*) begin
    if (~arrived)
       keep_driving = ~gas_tank_empty;
end
*/
//下面的电路隐含寄存器，修改它们，避免这种情况发生。

// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else
            keep_driving = 0;
    end

endmodule

//如果没有 " else  shut_off_coputer = 0; ", 则编译器会认为该变量值不变，并产生一个隐含寄存器储存shut_off_computer值。