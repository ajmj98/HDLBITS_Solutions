//A heating/cooling thermostat controls both a heater (during winter) and an air conditioner (during summer). Implement a circuit that will turn on and off the heater, air conditioning, and blower fan as appropriate.


module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
assign heater=mode && too_cold? 1'b1 :1'b0;
    assign aircon=~mode && too_hot?1'b1 :1'b0;
    assign fan=fan_on || (mode && too_cold)  ||(~mode && too_hot);
endmodule
