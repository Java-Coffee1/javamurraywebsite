---
title: 'Aquaponics Sensor System'
draft: false
hidemeta: true
---


## Java Murray. 

# Project Overveiw. 
This project involved designing and developing a system to monitor live fish and water conditions in real time. The system collected data, including water level, pH, and temperature, using a water level sensor, pH sensor, and temperature sensors.

We used a ESP32 to gather data from the sensors and transmit it to a dashboard, where users could monitor the health of the system in real time. In addition to the monitoring of the dashboard, we also designed a calibration dashboard that allowed sensors to be calibrated and configured easily, ensuring accurate and reliable measurements.

The final system provides a centralized platform for monitoring water quality and environmental conditions of the green house, helping to maintain a healthy habitat for live fish and plants.

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


# Conclusion

This project was both challenging and rewarding to work on. Throughout the development process, I learned a great deal about C++ programming, embedded systems, and sensor integration. One of the most valuable lessons was learning how to iterate on a design by building a prototype, identifying problems, and continuously improving the system through multiple development phases.

I also gained experience designing communication systems between devices using the ESP-NOW protocol, creating custom user interfaces, and developing dashboards to visualize real-time data. In addition, I learned how to work with a variety of hardware components, including ESP32 microcontrollers, Raspberry Pi computers, pH sensors, temperature sensors, and water level sensors.

By the end of the project, I had successfully developed a complete aquaponics monitoring system that can collect, transmit, and display environmental data in real time. This project strengthened both my programming and engineering skills while giving me hands on experience with designing a real-world IoT solution. Overall, I am proud of the final result and of the knowledge and experience I gained throughout the project.