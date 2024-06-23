num_samples = 1000;
can_id = hex2dec('123');
sample_time = 0.01;

t = (0:num_samples-1) * sample_time;
frequency = 1;
amplitude = 50;
offset = 25;
data_sine = amplitude * sin(2 * pi * frequency * t);
data_square = offset + square(2 * pi * frequency * t);
data = data_sine + data_square;

for i = 1:num_samples
    can_message = struct;
    can_message.ID = can_id;
    can_message.Data = uint8(typecast(int16(data(i)), 'uint8'));
    
    disp(['Sending CAN message with ID: 0x', dec2hex(can_message.ID), ', Data: ', num2str(data(i))]);
    
    pause(sample_time);
    
    figure(1);
    plot3(t(1:i), data_sine(1:i), data_square(1:i), 'b');
    xlabel('Time (s)');
    ylabel('Sine Wave');
    zlabel('Square Wave');
    title('Simulated CAN Signal in ECU');
    grid on;
    drawnow;
end
