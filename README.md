# 🏥 End-to-End Medical Chatbot

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.10+-blue?logo=python" alt="Python">
  <img src="https://img.shields.io/badge/LangChain-Integrated-green?logo=chainlink" alt="LangChain">
  <img src="https://img.shields.io/badge/OpenAI-Powered-412991?logo=openai&logoColor=white" alt="OpenAI">
  <img src="https://img.shields.io/badge/Pinecone-Vector%20DB-6544a6" alt="Pinecone">
  <img src="https://img.shields.io/badge/Flask-Web%20App-000000?logo=flask&logoColor=white" alt="Flask">
  <img src="https://img.shields.io/badge/RAG-Architecture-purple" alt="RAG">
  <img src="https://img.shields.io/badge/License-MIT-yellow" alt="License">
</p>

> An end-to-end **Medical Chatbot** built with Retrieval-Augmented Generation (RAG) principles to answer domain-specific medical queries from a curated knowledge base. The project combines document ingestion, embedding generation, vector search, and LLM-powered response generation inside a Flask web application.

---

## 📋 Table of Contents

- [Overview](#overview)
- [System Architecture](#system-architecture)
- [What You Will Learn](#what-you-will-learn)
- [What You'll Build](#what-youll-build)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Running the App](#running-the-app)
- [Key Features](#key-features)
- [Contributing](#contributing)
- [License](#license)

---

## 🧾 Overview

This project demonstrates how to build a production-style **medical question-answering assistant** using modern LLM application patterns. It includes document processing, vector indexing, semantic retrieval, prompt-driven response generation, and a Flask-based interface for interacting with the chatbot.

- Ingests and processes medical knowledge documents (PDFs)
- Generates vector embeddings using OpenAI Embeddings
- Stores embeddings in **Pinecone** for efficient semantic retrieval
- Retrieves the most relevant document chunks based on user queries
- Generates accurate, context-grounded answers using **OpenAI LLM**
- Provides a user-friendly **Flask web interface** for real-time interaction

The repository is organized as an end-to-end AI application rather than a notebook-only demo, making it ideal for learning practical project structure, deployment flow, and modular backend design.

---

## 🏗️ System Architecture

> *High-level architecture overview of the Medical Chatbot pipeline — from document ingestion and embedding creation to vector storage, retrieval, and LLM-powered response generation.*

### 🔄 Architecture Flow

```
Medical Documents (PDFs)
        │
        ▼
[📄 Document Loading] (PyPDFLoader / DirectoryLoader)
        │
        ▼
[✂️ Text Chunking] (RecursiveCharacterTextSplitter)
        │
        ▼
[🧠 Vector Embedding] (OpenAI Embeddings)
        │
        ▼
[🗄️ Pinecone Vector Store] (Persistent vector database)
        │
        ▼
[🔍 User Query] → [OpenAI Embeddings] → [Top-K Chunks]
        │
        ▼
[🤖 LLM Generation] (OpenAI GPT)
        │
        ▼
[✅ Grounded Medical Answer] → [Flask Web UI]
```

### Architecture Breakdown

| Stage | Component | Description |
|-------|-----------|-------------|
| **1. Document Ingestion** | PyPDFLoader | Load medical PDF knowledge base |
| **2. Text Preprocessing** | RecursiveCharacterTextSplitter | Split documents into meaningful chunks |
| **3. Embedding Creation** | OpenAI Embeddings | Convert chunks into vector representations |
| **4. Vector Storage** | Pinecone | Store and index embeddings for similarity lookup |
| **5. Query Processing** | OpenAI Embeddings | Convert user query into vector for matching |
| **6. Retrieval** | Vector Search | Fetch top-K most relevant document chunks |
| **7. LLM Generation** | OpenAI GPT | Generate grounded, context-aware medical response |
| **8. UI Interface** | Flask + HTML/CSS | Interactive chat interface for users |

---

## 🎓 What You Will Learn

- ✅ How to structure an **end-to-end LLM application** for a real-world use case
- ✅ How **Retrieval-Augmented Generation (RAG)** improves answer relevance and accuracy
- ✅ How to create and store vector embeddings in **Pinecone**
- ✅ How to connect **OpenAI-based generation** with retrieved document context
- ✅ How to serve a chatbot through a **Flask web interface**
- ✅ How to organize reusable application code inside a `src/` package
- ✅ How to prepare an AI project for **CI/CD and AWS deployment** workflows

---

## 🛠️ What You'll Build

- A functional **Medical Chat Assistant** that answers domain-specific queries
- A **document ingestion pipeline** with LangChain document loaders
- A **semantic search system** backed by Pinecone vector database
- An **LLM-powered response generator** using OpenAI
- A clean **Flask web UI** for real-time chat interaction
- A project ready for **cloud deployment** with GitHub Actions and AWS

---

## 🧰 Tech Stack

| Technology | Purpose |
|-----------|---------|
| **Python 3.10+** | Core programming language |
| **LangChain** | RAG pipeline orchestration |
| **OpenAI** | LLM & Embeddings (GPT + text-embedding-ada-002) |
| **Pinecone** | Vector database for semantic search |
| **Flask** | Web framework for chat interface |
| **HTML/CSS** | Frontend templates for UI |
| **GitHub Actions** | CI/CD automation |
| **AWS** | Cloud deployment target |

---

## 📁 Project Structure

```bash
End-to-End-Medical-Chatbot/
│
├── .github/workflows/      # CI/CD workflow definitions
├── data/                   # Source medical knowledge/data files (PDFs)
├── research/               # Experiments and exploratory notebooks
├── src/                    # Core application package
│   ├── helper.py           # Data loading & chunking utilities
│   └── prompt.py           # Prompt templates for LLM
├── static/                 # Static frontend assets (CSS, JS)
├── templates/              # HTML templates for Flask UI
│   └── chat.html           # Main chat interface
├── app.py                  # Flask application entry point
├── store_index.py          # Script to create/store embeddings in Pinecone
├── pyproject.toml          # Project configuration and dependencies
├── setup.py                # Packaging/setup configuration
├── template.sh             # Project scaffolding helper
├── LICENSE                 # MIT License
└── README.md               # Project documentation
```

---

## 🚀 Getting Started

### Prerequisites

- Python 3.10 or higher
- Conda or virtual environment tooling
- Git
- [Pinecone](https://www.pinecone.io/) account and API key
- [OpenAI](https://platform.openai.com/) API key

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/Vishalkumarjaiswal16/End-to-End-Medical-Chatbot.git
cd End-to-End-Medical-Chatbot
```

2. **Create and activate a virtual environment**

Using Conda:
```bash
conda create -n medibot python=3.10 -y
conda activate medibot
```

Or using `venv`:
```bash
python -m venv venv
source venv/bin/activate        # On Linux/Mac
venv\Scripts\activate           # On Windows
```

3. **Install dependencies**

```bash
pip install -r requirements.txt
```

Or using the modern project configuration:
```bash
pip install -e .
```

### Configuration

Create a `.env` file in the project root and add your credentials:

```env
PINECONE_API_KEY="your_pinecone_api_key"
OPENAI_API_KEY="your_openai_api_key"
PINECONE_ENVIRONMENT="your_environment"
PINECONE_INDEX_NAME="medicalbot"
```

### Running the App

1. **Build and store the vector index**

Run the indexing script to generate embeddings and push them to Pinecone:

```bash
python store_index.py
```

2. **Start the Flask application**

```bash
python app.py
```

3. **Open the app in your browser**

```
http://localhost:5000
```

---

## ✨ Key Features

- 🔍 **Semantic Search** — Finds the most relevant medical documents using vector similarity
- 🤖 **LLM-Powered Responses** — Uses OpenAI GPT for accurate, context-grounded answers
- 📄 **Document Grounded** — Answers are always backed by real medical knowledge base documents
- ⚡ **Real-time Support** — Low latency responses for medical queries
- 🖥️ **Interactive UI** — Clean Flask-based chat interface with HTML/CSS templates
- 🔄 **Modular Architecture** — Indexing pipeline separated from the serving pipeline
- 🚀 **CI/CD Ready** — GitHub Actions workflow included for automation
- ☁️ **Cloud Deployable** — AWS deployment direction included in the repository

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add your feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

You can contribute by improving:
- Retrieval quality
- Prompt engineering
- UI/UX
- Deployment workflow
- Documentation
- Testing and evaluation

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for details.

---

Made with ❤️ by [Vishal Kumar](https://github.com/Vishalkumarjaiswal16)
