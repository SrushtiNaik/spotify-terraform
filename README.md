# Spotify Terraform Project

This project automates Spotify playlist creation using Terraform and the Spotify API.

## Project Overview
Using Terraform and the Spotify provider, this project:
- Creates playlists on Spotify.
- Adds tracks to playlists by specifying track IDs or searching for tracks by artist.

## Features
- **Spotify Playlist Creation**: Automate the creation of Spotify playlists using Terraform configurations.
- **Track Search and Addition**: Search for tracks by artist and automatically add them to a playlist.
- **Output Metrics**: Display the number of tracks fetched for a specific artist.

---

## Prerequisites
1. **Terraform**: Install [Terraform](https://www.terraform.io/downloads.html).
2. **Spotify Developer Account**: Set up a Spotify Developer account and obtain an API key:
   - Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
   - Create an app to get your **API key**.
3. **Environment Setup**:
   - Install a text editor like VS Code.
   - Configure your Spotify credentials in an `.env` file.

---

## Project Structure
| File Name          | Description                                                                                     |
|--------------------|-------------------------------------------------------------------------------------------------|
| `variables.tf`     | Defines the input variables, such as the Spotify API key.                                       |
| `terraform.tfvars` | Provides the values for the variables (excluded from version control for security).             |
| `provider.tf`      | Configures the Spotify provider for Terraform.                                                  |
| `playlist.tf`      | Contains resources to create playlists and add tracks to them using the Spotify API.            |
| `.env`             | Stores Spotify credentials securely (not included in the repository).                          |
| `.gitignore`       | Ensures sensitive files like `.env` and `.tfvars` are not committed to the repository.           |

---

## Setup Instructions

### 1. Clone the Repository
```bash
git clone <repository-url>
cd spotify-terraform
```

### 2. Configure the `.env` File
Create a `.env` file in the root directory with the following content:
```plaintext
SPOTIFY_CLIENT_ID=your_spotify_client_id
SPOTIFY_CLIENT_SECRET=your_spotify_client_secret
```

### 3. Initialize Terraform
Run the following command to initialize the Terraform project:
```bash
terraform init
```

### 4. Configure the terraform.tfvars File
Create a terraform.tfvars file and add your Spotify API key:
```bash
api_key = "your_spotify_api_key"
```

### 5. Plan and Apply the Terraform Configuration
To check the execution plan:
```bash
terraform plan
```

### 6. To apply the configuration and create resources
```bash
terraform apply
```

### 7. Future Enhancements
Automate the retrieval of top tracks for an artist and add them to a playlist.
Allow dynamic playlist naming based on user input.
Implement secret management solutions like AWS Secrets Manager or HashiCorp Vault for added security.