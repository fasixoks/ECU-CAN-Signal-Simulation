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

## Mathematical Equations

### Signal Generation
The combined signal \( y(t) \) is generated as:
\[ y(t) = A \sin(2 \pi f t) + B \cdot \text{square}(2 \pi f t) + N(0, \sigma^2) \]
where:
- \( A \) is the amplitude of the sine wave.
- \( f \) is the frequency.
- \( B \) is the offset for the square wave.
- \( N(0, \sigma^2) \) represents Gaussian noise with zero mean and variance \( \sigma^2 \).

### Low-Pass Filtering
A Butterworth low-pass filter is designed and applied:
\[ H(s) = \frac{b_0 + b_1 s + b_2 s^2}{a_0 + a_1 s + a_2 s^2} \]

### Fourier Transform
The frequency domain representation is obtained using the Fast Fourier Transform (FFT):
\[ Y(f) = \sum_{n=0}^{N-1} y(t) e^{-j 2 \pi f t} \]

### RMS Calculation
The Root Mean Square (RMS) value is calculated as:
\[ \text{RMS} = \sqrt{\frac{1}{N} \sum_{n=1}^{N} y(t_n)^2} \]

### PID Controller
The PID control law is implemented as:
\[ u(t) = K_p e(t) + K_i \int e(t) dt + K_d \frac{d e(t)}{dt} \]
where:
- \( K_p \) is the proportional gain.
- \( K_i \) is the integral gain.
- \( K_d \) is the derivative gain.
- \( e(t) \) is the error signal.


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
    Open `ECU_CAN_Simulation.m` in MATLAB and hit run. Sit back and watch the magic happen.

## Dependencies

- MATLAB R2020b or later.


## Author

[Fayssal CHOKRI](https://github.com/fasixoks)

## Acknowledgments

Shout out to all the engineers out there pushing the boundaries in embedded systems and electronics. Your work inspires us all!

