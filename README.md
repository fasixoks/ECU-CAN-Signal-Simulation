# ECU CAN Signal Simulation

Welcome to the ECU CAN Signal Simulation repo! This project is all about simulating CAN signals in an Electronic Control Unit (ECU) environment using MATLAB. We’ve packed this script with advanced signal processing, control systems, and real-time data visualization to make it as robust and useful as possible for anyone working with embedded systems and electronics.

## Features

- **Signal Generation**: Mixes sine wave, square wave, and Gaussian noise for a realistic signal.
- **Signal Processing**: Uses a low-pass Butterworth filter to clean up the signal.
- **Frequency Domain Analysis**: Applies Fourier Transform to break down the signal into its frequency components.
- **RMS Calculation**: Computes the Root Mean Square to measure signal power.
- **PID Controller**: Implements a PID controller to mimic control systems in ECUs.
- **Real-Time Visualization**: Updates a 3D plot dynamically to show the signal components over time.
- **CAN Message Simulation**: Constructs and prints out simulated CAN messages for a bit of realism.
## Screenshots
![Capture](https://github.com/fasixoks/ECU-CAN-Signal-Simulation/assets/126894089/1bedc604-f807-4b4a-bd36-0f65fa5374aa)
![Capture1](https://github.com/fasixoks/ECU-CAN-Signal-Simulation/assets/126894089/7b9596f5-614d-4851-937d-4273561796b1)

## Mathematical Equations

### Signal Generation
The combined signal y(t) is generated as:
y(t) = A * sin(2 * pi * f * t) + B * square(2 * pi * f * t) + N(0, sigma^2)
where:
- A is the amplitude of the sine wave.
- f is the frequency of the sine wave.
- B is the offset of the square wave.
- N(0, sigma^2) represents Gaussian noise with mean 0 and variance sigma^2.

### Low-Pass Filtering
A 2nd order Butterworth low-pass filter is applied to the signal:
H(s) = (b0 + b1 * s + b2 * s^2) / (a0 + a1 * s + a2 * s^2)

where j is the imaginary unit.

### RMS Calculation
The Root Mean Square (RMS) value of the signal y(t) is calculated as:
RMS = sqrt((1 / N) * sum(y(t_n)^2))

where N is the number of samples.

### PID Controller
The PID controller output u(t) is determined by:
u(t) = Kp * e(t) + Ki * integral(e(t)) + Kd * derivative(e(t))

where:
- Kp is the proportional gain.
- Ki is the integral gain.
- Kd is the derivative gain.
- e(t) is the error signal.



## How to Use

1. **Clone the repo**:
    ```sh
    git clone https://github.com/fasixoks/ECU-CAN-Signal-Simulation.git
    ```

2. **Navigate to the project directory**:
    ```sh
    cd ECU-CAN-Signal-Simulation
    ```

3. **Run the MATLAB script**:
    Open [`can.m`](https://github.com/fasixoks/ECU-CAN-Signal-Simulation/blob/main/can.m) in MATLAB and hit run. Sit back and watch the magic happen.

## Dependencies

- MATLAB R2020b or later.


## Author

[Fayssal CHOKRI](https://github.com/fasixoks)

## Acknowledgments

Shout out to all the engineers out there pushing the boundaries in embedded systems and electronics. Your work inspires us all!

