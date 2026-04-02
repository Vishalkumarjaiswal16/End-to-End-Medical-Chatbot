# End-to-End Medical Chatbot

An end-to-end **Medical Chatbot** built with Retrieval-Augmented Generation (RAG) principles to answer domain-specific medical queries from a curated knowledge base. The project combines document ingestion, embedding generation, vector search, and LLM-powered response generation inside a web application workflow. 

## Table of Contents

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

## Overview

This project demonstrates how to build a production-style medical question-answering assistant using modern LLM application patterns. It includes document processing, vector indexing, semantic retrieval, prompt-driven response generation, and a Flask-based interface for interacting with the chatbot.

The repository is organized as an end-to-end AI application rather than a notebook-only demo, which makes it useful for learning practical project structure, deployment flow, and modular backend design.

## System Architecture

The application follows a retrieval-powered chatbot pipeline:

1. Medical knowledge documents are collected and prepared.
2. Text is chunked and converted into embeddings.
3. Embeddings are stored in Pinecone for semantic retrieval.
4. User questions are submitted through the web interface.
5. Relevant chunks are fetched from the vector store.
6. The LLM uses retrieved context to generate grounded responses.

### High-Level Flow

```text
Medical Documents
      │
      ▼
Document Loading & Chunking
      │
      ▼
Embedding Generation
      │
      ▼
Pinecone Vector Store
      │
      ▼
User Query from Flask UI
      │
      ▼
Retriever + LLM
      │
      ▼
Context-Aware Medical Response
```

## What You Will Learn

By building and studying this project, you will understand:

- How to structure an end-to-end LLM application for a real use case.
- How retrieval-augmented generation improves answer relevance.
- How to create and store embeddings in Pinecone.
- How to connect OpenAI-based generation with retrieved context.
- How to serve the chatbot through a Flask web interface.
- How to organize reusable application code inside a `src/` package.
- How to prepare an AI project for CI/CD and AWS deployment workflows.

## What You'll Build

You will build a medical chatbot application that can:

- Ingest medical documents into a searchable knowledge base.
- Create vector embeddings for semantic search.
- Retrieve relevant context for a user query.
- Generate contextual responses using an LLM.
- Provide a simple browser-based chat interface.
- Be extended toward cloud deployment with GitHub Actions and AWS.

## Tech Stack

### Core Technologies
- Python
- Flask
- LangChain
- OpenAI
- Pinecone

### Supporting Components
- HTML/CSS templates for UI
- Modular Python package structure under `src/`
- GitHub Actions workflow for automation
- AWS deployment notes for containerized/cloud hosting

## Project Structure

```bash
End-to-End-Medical-Chatbot/
│
├── .github/workflows/        # CI/CD workflow definitions
├── data/                     # Source knowledge/data files
├── research/                 # Experiments and exploratory work
├── src/                      # Core application package
├── static/                   # Static frontend assets
├── templates/                # HTML templates for Flask UI
├── app.py                    # Flask application entry point
├── store_index.py            # Script to create/store embeddings in Pinecone
├── pyproject.toml            # Project configuration and dependencies
├── setup.py                  # Packaging/setup configuration
├── template.sh               # Project scaffolding helper
├── project_draft.md          # Draft notes/documentation
├── LICENSE                   # MIT License
└── README.md                 # Project documentation
```

## Getting Started

Follow the steps below to set up the project locally and run the medical chatbot.

## Prerequisites

Make sure you have the following installed:

- Python 3.10
- Conda or virtual environment tooling
- Git
- Pinecone account and API key
- OpenAI API key

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/Vishalkumarjaiswal16/End-to-End-Medical-Chatbot.git
cd End-to-End-Medical-Chatbot
```

### 2. Create and activate a virtual environment

Using Conda:

```bash
conda create -n medibot python=3.10 -y
conda activate medibot
```

Or using `venv`:

```bash
python -m venv venv
source venv/bin/activate      # On Linux/Mac
venv\\Scripts\\activate         # On Windows
```

### 3. Install dependencies

If you are using the project dependency file:

```bash
pip install -r requirements.txt
```

If you are using the modern project configuration:

```bash
pip install -e .
```

## Configuration

Create a `.env` file in the project root and add your credentials:

```env
PINECONE_API_KEY="your_pinecone_api_key"
OPENAI_API_KEY="your_openai_api_key"
```

Depending on your implementation, you may also configure:

```env
PINECONE_ENVIRONMENT="your_environment"
PINECONE_INDEX_NAME="medicalbot"
```

## Running the App

### 1. Build and store the vector index

Run the indexing script to generate embeddings and push them to Pinecone:

```bash
python store_index.py
```

### 2. Start the Flask application

```bash
python app.py
```

### 3. Open the app in your browser

Visit:

```bash
http://localhost:5000
```

## Key Features

- End-to-end RAG-based medical chatbot workflow.
- Semantic search with Pinecone vector database.
- LLM-powered answer generation using OpenAI.
- Flask web app interface for user interaction.
- Modular repository structure for easier scaling and maintenance.
- Indexing pipeline separated from the serving pipeline.
- CI/CD and AWS deployment direction included in the repository.

## Contributing

Contributions are welcome.

If you'd like to improve the project:

1. Fork the repository.
2. Create a feature branch.
3. Make your changes with clear commits.
4. Open a pull request with a concise description.

You can contribute by improving:
- Retrieval quality
- Prompt engineering
- UI/UX
- Deployment workflow
- Documentation
- Testing and evaluation

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
