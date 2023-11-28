# HomeLink

## Overview

HomeLink is a mobile application designed to address the increasing challenges of homelessness. With a user-friendly interface, it allows users to submit reports on individuals experiencing homelessness, providing quick or detailed information. The app utilizes Core Location, GPS, and SMS to immediately notify local shelters and authorities about the location of rough sleepers. HomeLink aims to bridge the gap between the community and local shelters, fostering a proactive approach to homelessness.

## Features

- Quick and detailed report submission
- Automated SMS notifications to local shelters
- GPS and Core Location integration
- Machine Learning for predicting future homeless hotspots
- User-friendly interface designed on Figma

## Getting Started

To run the app, follow the steps below:

1. Open the project in Xcode.
2. Build and run the app on your iOS device.

### Prerequisites

- Xcode
- iOS device

## Usage

1. Launch the app on your iOS device.
2. Choose between a quick or detailed report.
3. Submit information about observed rough sleepers.
4. Automated SMS notifications are sent to local shelters.
5. Contribute to predicting future homeless hotspots.

## Project Structure

The project is structured into two main components:

- **HeatMapViewController:** Displays a Mapbox map with a heatmap layer representing homeless data.

- **MapViewController:** Integrates Core Location, GPS, and SMS for submitting and notifying about homeless individuals. Utilizes Mapbox for mapping and annotation.

## Dependencies

- Mapbox
- Core Location
- MessageUI

## Inspiration

The app was inspired by the increasing challenges of homelessness, especially during the pandemic, and the desire to empower individuals to take part in eradicating homelessness.

## What It Does

HomeLink allows users to submit quick or detailed reports on rough sleepers. The app uses GPS and Core Location to send immediate SMS notifications to local shelters. Detailed reports contribute to future datasets for predicting homeless hotspots.

## How We Built It

The application was built by combining UI/UX design from Figma with logic and backend development. We integrated Mapbox CocoaPods for mapping, Core Location, and SMS texting. Machine learning was used to predict future homeless hotspots.

## Challenges

Challenges included merge issues during the integration of UI and logic, as well as implementing maps and handling data from the internet.

## Accomplishments

The team successfully addressed merge issues, resulting in a functional app. Learning Swift, SMS texting, GPS, Maps, and Machine Learning was a significant accomplishment.

## What We Learned

The team gained valuable experience in utilizing Swift, integrating SMS notifications, handling GPS and Maps, and applying Machine Learning to address homelessness.

## What's Next for HomeLink

Future plans involve connecting with shelters and organizations globally to expand HomeLink's impact and efficiently address homelessness worldwide.
