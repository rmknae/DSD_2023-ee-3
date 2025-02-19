module Lab4_rgb(
    input logic [1:0] a,
    input logic [1:0] b,
    output logic R,
    output logic G,
    output logic B
);
    assign R = ((~b[1]) & (~b[0])) | ((~b[1]) & (a[0])) | ((~b[1]) & (a[1])) | ((a[1]) & (a[0])) | ((a[1]) & (~b[0]));
    assign G = ((~a[1]) & (~a[0])) | ((~a[1]) & (b[0])) | ((~a[1]) & (b[1])) | ((b[1]) & (b[0])) | ((b[1]) & (~a[0]));
    assign B = ((~a[1]) & (b[1])) | ((a[1]) & (~b[1])) | ((~a[0]) & (b[0])) | ((a[0]) & (~b[0]));
endmodule
