# 🎬 Movie Database App

A Flutter-based Movies Database Application powered by the TMDB API
.
Browse trending and now-playing movies, search your favorites, and bookmark them — even offline!

### 🚀 Overview

This app uses the TMDB API to fetch and display movie data.
It supports offline usage by caching API responses locally, ensuring users can still browse previously viewed and bookmarked movies without an internet connection.

### 📱 Features
#### 🏠 Home

Displays Trending and Now Playing movies.

Fetches data from TMDB and stores it locally for offline access.

#### 🎥 Movie Details

Tap any movie to view detailed information including synopsis, rating, and release date.

#### 🔖 Bookmarks

Bookmark your favorite movies.

View and manage saved movies in a separate “Saved” section.

Works seamlessly offline.

#### 🔍 Search

Search for any movie by title using the TMDB search API.

Implements debounced search — results update automatically when the user stops typing (no need for a search button).

### 🧩 Tech Stack

Flutter (Frontend)

TMDB API (Data Source)

Local Database (Offline support – Drift)

Retrofit & Dio (Networking)


### 🛠️ Setup

- Clone this repository:

```
git clone https://github.com/yourusername/movies-database-app.git
```


- Get dependencies:

```
flutter pub get
```


- Add your TMDB Access Token in `.env` file.
```
AUTH_TOKEN=<TMDB_ACCESS_TOKEN>
```

- Run the app:

```
flutter run
```
