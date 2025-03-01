#  Twitter Clone MVP

Twitter Clone MVP is a minimal viable product (MVP) of a Twitter-like social media platform built with the MERN stack.

## Project Structure

This project consists of two main parts:

- **Frontend** (React, Vite, Tailwind CSS, React Query)
- **Backend** (Express, MongoDB, JWT Authentication)

## Features

- User authentication (JWT-based login/signup)
- Posting tweets
- Liking and retweeting posts
- Following and unfollowing users
- Real-time updates with React Query

## Tech Stack

### Frontend

- React 18
- Vite
- React Router
- Tailwind CSS & DaisyUI
- React Query
- React Hot Toast (notifications)

### Backend

- Node.js (Express)
- MongoDB (Mongoose ORM)
- JSON Web Tokens (JWT) for authentication
- Cloudinary for media uploads
- Bcrypt.js for password hashing
- Cors and Cookie Parser for security

## Installation & Setup

### Prerequisites

- Node.js 18+
- MongoDB instance

### Clone Repository

```sh
git clone https://github.com/yashje/Twitter-clone-mvp
cd twitter-clone-mvp
```

### Setup Environment Variables

Create a `.env` file in the root directory and add:

```env
MONGO_URI=your_mongo_connection_string
PORT=5000
JWT_SECRET=your_secret_key
NODE_ENV=development
CLOUDINARY_CLOUD_NAME=your_cloudinary_name
CLOUDINARY_API_KEY=your_cloudinary_api_key
CLOUDINARY_API_SECRET=your_cloudinary_api_secret
```

### Run the Project

#### Using Docker

```sh
docker build -t twitter-clone .
docker run -p 5000:5000 -p 3000:3000 twitter-clone
```

#### Without Docker

1. Install dependencies:
   ```sh
   npm install
   npm install --prefix frontend
   ```
2. Start the backend:
   ```sh
   npm run dev
   ```
3. Start the frontend:
   ```sh
   npm run dev --prefix frontend
   ```

Now, the backend will be running on `http://localhost:5000`, and the frontend will be available at `http://localhost:3000`. Login, tweet, and interact with other users just like on Twitter!

## Docker Setup

A `Dockerfile` is included to containerize the application:

```dockerfile
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY frontend/package*.json frontend/
RUN npm install --prefix frontend

COPY . .

RUN npm run build --prefix frontend

EXPOSE 5000
EXPOSE 3000

CMD ["sh", "-c", "npm run start & npm run preview --prefix frontend"]
```

## Contributing

Feel free to fork this repo and contribute to the project.

## Author

**Yash Suryawanshi**

## License

This project is licensed under the MIT License.














