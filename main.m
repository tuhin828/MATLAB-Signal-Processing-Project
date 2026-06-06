clc;
clear;
close all;

% Sampling parameters
fs = 1000;              % Sampling frequency (Hz)
t = 0:1/fs:1;           % Time vector (1 second)

% Signal generation
signal = sin(2*pi*5*t); % 5 Hz sine wave

% Noise addition
noise = 0.3 * randn(size(t));
noisy_signal = signal + noise;

% Plot time domain signals
figure;
subplot(3,1,1);
plot(t, signal);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, noisy_signal);
title('Noisy Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency analysis using FFT
N = length(noisy_signal);
Y = fft(noisy_signal);
f = (0:N-1)*(fs/N);

subplot(3,1,3);
plot(f, abs(Y));
title('Frequency Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');