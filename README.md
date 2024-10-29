# Park-Smart 🚗

## Smart Parking Solutions for Los Angeles

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://downtown-la-parking-solution.streamlit.app/)

Park-Smart is an intelligent parking solution that leverages real-time data and machine learning to help Los Angeles residents and visitors find optimal parking spots, reducing time spent searching and improving the overall parking experience.

## 🎯 Features

- Real-time parking meter occupancy data
- ML-powered parking availability predictions
- Optimal route calculation to available parking spots
- Weather-aware parking recommendations
- Interactive map visualization

## 🚀 Demo

Visit our live application: [Park-Smart Streamlit App](https://parking-smart.streamlit.app/)

## 🛠️ Technology Stack

- **Frontend**: Streamlit
- **Backend**: Python
- **Containerization**: Docker
- **APIs**:
  - LA City Data API (Parking Meter Data) <a href="https://data.lacity.org/Transportation/LADOT-Parking-Meter-Occupancy/e7h6-4a3e/about_data" target=_blank>link</a>
  - Bing Maps API (Navigation) <a href="https://www.microsoft.com/en-us/maps/bing-maps/choose-your-bing-maps-api" target=_blank>link</a>
  - OpenWeather API (Weather Data) <a href="https://openweathermap.org/api" target=_blank>link</a>
- **Machine Learning**: Custom prediction models

## 📋 Prerequisites

Before running the project, ensure you have:

- Python 3.8 or higher (for local development)
- Git
- Docker and Docker Compose
- Required API keys (see Setup section)

## 🔧 Setup

### Option 1: Using Docker (Recommended)

1. Clone the Repository
```bash
git clone https://github.com/yourusername/park-smart.git
cd park-smart
```

2. Create a `.env` file with your API keys:
```env
LACITY_API_KEY=your_key_here
BING_MAPS_KEY=your_key_here
OPENWEATHER_API_KEY=your_key_here
```

3. Build and Run with Docker
```bash
# Build the Docker image
docker build -t park-smart .

# Run the container
docker run -p 8501:8501 --env-file .env park-smart
```

The application will be available at `http://localhost:8501`


## 🐳 Docker Configuration

The included Dockerfile sets up the application with all necessary dependencies. Key features:

- Based on Python 3.8 slim image
- Installs system and Python dependencies
- Sets up the application environment
- Exposes port 8501 for Streamlit
- Configures environment variables

You can customize the Docker setup by modifying the Dockerfile or using Docker Compose for more complex configurations.

## 🤝 Contributing

We welcome contributions to Park-Smart! Here's how you can help:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/improvement`)
3. Make your changes
4. Commit your changes (`git commit -am 'Add new feature'`)
5. Push to the branch (`git push origin feature/improvement`)
6. Create a Pull Request

---






