---
title: 'Aquaponics Sensor System'
draft: false
hidemeta: true
---


## Java Murray. 

### Project Goal

The goal of this project was to design and build a low cost aquaponics monitoring system capable of collecting and displaying real-time environmental data. The system needed to be reliable, easy to maintain, and simple for users to monitor and calibrate.

### Design Philosophy

My design philosophy is to solve problems using the simplest and most effective solution possible. I believe that systems should be reliable, easy to understand, and cost effective. Throughout this project, I focused on simplifying both the hardware and software while still providing accurate monitoring and a good user experience.

### Skills Learned

- ESP32 Development
- Sensor Calibration
- Dashboard Design
- Grafana
- ESP-NOW Communication
- Electronics Assembly
- IoT System Design

## Project Overview. 
This project involved designing and developing a system to monitor live fish and water conditions in real time. The system collected data, including water level, pH, and temperature, using a water level sensor, pH sensor, and temperature sensors.

We used an ESP32 to gather data from the sensors and transmit it to a dashboard, where users could monitor the health of the system in real time. In addition to the monitoring of the dashboard, we also designed a calibration dashboard that allowed sensors to be calibrated and configured easily, ensuring accurate and reliable measurements.

The final system provides a centralized platform for monitoring water quality and environmental conditions of the greenhouse, helping to maintain a healthy habitat for live fish and plants.

<div style="display: flex; gap: 10px;">
  <img src="/Aquaponics_Sensor/box.png" alt="First image" style="width: 50%;">
  <img src="/Aquaponics_Sensor/Dashboard1.png" alt="Second image" style="width: 100%;">
</div>


### Phase 1: Initial Prototype

The first phase focused on creating a working proof of concept. An ESP32 was used to collect sensor data and send it to a dashboard for monitoring. We chose Grafana as our dashboard platform because it provided a clear and effective way to visualize the collected data.

<div style="display: flex; gap: 10px;">
  <img src="/Aquaponics_Sensor/old_box_1.png" alt="First image" style="width: 50%;">
  <img src="/Aquaponics_Sensor/old_box_2.png" alt="Second image" style="width: 50%;">
</div>

### Phase 2: Expanding Functionality and Reliability

The second phase focused on improving the system's capabilities and reliability. We added additional sensors, including a temperature sensor, and expanded the Grafana dashboard to display more information. A camera, powered by a Raspberry Pi 5, was also integrated into the system to provide live visual monitoring of the fish tank.

To improve reliability and simplify the deployment, we consolidated all of the electronics into a single enclosure. This made the system more organized, easier to maintain, and better suited for long-term operation.


<div style="display: flex; gap: 10px;">
  <img src="/Aquaponics_Sensor/box_v1.png" alt="First image" style="width: 50%;">
  <img src="/Aquaponics_Sensor/box_v1b.png" alt="Second image" style="width: 50%;">
</div>


### Phase 3: Improving User Experience

The final phase focused on making the system more user-friendly. We upgraded the system by adding an ESP32 with an integrated display and developed a custom user interface specifically for the project. This interface allows users to view system information and interact with the device directly.

The display unit receives updates from the main ESP32 using the ESP-NOW communication protocol, enabling fast and efficient wireless communication between devices. This phase significantly improved the overall usability and accessibility of the system.

<div style="display: flex; gap: 10px;">
  <img src="/Aquaponics_Sensor/Box_v2.png" alt="First image" style="width: 50%;">
  <img src="/Aquaponics_Sensor/greenhouse.png" alt="Second image" style="width: 100%;">
</div>


## Conclusion

One thing I would change if I were to complete this project again is how I approached learning new concepts. During development, I often focused on getting features working as quickly as possible, which sometimes led me to rely on existing code examples without fully understanding how they worked. While this helped me make progress, I realized that spending more time learning the underlying concepts would have improved both my programming skills and my ability to solve problems independently. In future projects, I would balance development time with dedicated learning and research so that I gain a deeper understanding of the technologies I am using.

Overall, this project taught me the importance of iterative design, testing, and continuous improvement. Each version of the system solved problems that were discovered in the previous version, resulting in a more reliable and user-friendly final product. The experience strengthened my skills in programming, electronics, communication systems, and user interface design, while giving me valuable experience developing a real-world IoT solution from concept to completion.
