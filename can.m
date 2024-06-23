num_samples = 1000;
can_id = hex2dec('123');
sample_time = 0.01;

t = (0:num_samples-1) * sample_time;
frequency = 1;
amplitude = 50;
offset = 25;
data_sine = amplitude * sin(2 * pi * frequency * t);
data_square = offset + square(2 * pi * frequency * t);
data_combined = data_sine + data_square;

fc = 2;
[b, a] = butter(2, fc/(1/(2*sample_time)));
data_filtered = filtfilt(b, a, data_combined);

data_fft = fft(data_combined);
frequencies = (0:num_samples-1)*(1/(num_samples*sample_time));

rms_value = rms(data_combined);

for i = 1:num_samples
    can_message = struct;
    can_message.ID = can_id;
    can_message.Data = uint8(typecast(int16(data_combined(i)), 'uint8'));
    
    disp(['Sending CAN message with ID: 0x', dec2hex(can_message.ID), ', Data: ', num2str(data_combined(i))]);
    
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

figure(2);
subplot(3,1,1);
plot(t, data_combined);
title('Combined Data');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, data_filtered);
title('Filtered Data (Low-pass)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(frequencies, abs(data_fft));
title('Fourier Transform');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

disp(['RMS Value of Combined Data: ', num2str(rms_value)]);
