Spotify Track Search and Playback with Flask
This project is a Flask web application that allows users to search for songs on Spotify and play them on their active Spotify device. The application uses the Spotipy library for interacting with the Spotify Web API and OAuth for user authentication.

Features
User Authentication: Uses Spotify OAuth to authenticate users.
Search Tracks: Search for tracks on Spotify by name.
Track Suggestions: Provides auto-suggestions as the user types in the search bar.
Play Tracks: Play selected tracks on the user's active Spotify device.
Pagination: Paginate through search results.
Prerequisites
Python 3.6+
Spotify Developer Account
Spotify Premium Account (for playback functionality)
Installation

Project Structure
app.py: Main application file.
templates/: Folder containing HTML templates.
base.html: Base HTML template.
index.html: Home page template.
results.html: Search results template.
static/: Folder for static files like CSS and JavaScript.
Endpoints
GET /: Home page, shows the current user information.
POST /search: Handles search requests for tracks.
GET /search_results: Displays search results with pagination.
GET /suggest: Provides track suggestions based on the user's input.
GET /login: Redirects to Spotify's OAuth login.
GET /callback: Handles the OAuth callback.
GET /play/<track_id>: Plays the specified track on the user's active device.
