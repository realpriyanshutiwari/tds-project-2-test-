# Data Analyst FastAPI Application

A powerful FastAPI application for data analysis with multiple LLM integrations, web scraping capabilities, and OCR functionality.

## Features

- **Multiple LLM Support**: Gemini 2.0 Flash, Gemini 2.5 Pro, GPT-4o Mini, Horizon Beta
- **Web Scraping**: Playwright-based scraping with stealth capabilities
- **OCR Processing**: Image text extraction using OCR.space API
- **Data Analysis**: Pandas, NumPy, DuckDB for data processing
- **File Processing**: Support for CSV, Excel, PDF, images, and archives

## Quick Start

### Local Development

1. Clone the repository:
```bash
git clone <your-repo-url>
cd dataanalyst-main
```

2. Create virtual environment:
```bash
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
playwright install
```

4. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your API keys
```

5. Run the application:
```bash
python app.py
```

The API will be available at `http://localhost:8000` with docs at `http://localhost:8000/docs`

### Required API Keys

Create a `.env` file with the following keys:

```env
# Essential APIs
gemini_api=your_google_gemini_api_key_here
gemini_api_2=your_second_gemini_api_key_here
API_KEY=your_openai_compatible_api_key_here
horizon_api=your_openrouter_api_key_here

# Optional APIs
OCR_API_KEY=your_ocr_space_api_key_here
grok_api=your_grok_api_key_here
grok_fix_api=your_grok_fix_api_key_here
```

### How to get API Keys

1. **Google Gemini**: [Google AI Studio](https://makersuite.google.com/app/apikey)
2. **OpenAI**: [OpenAI Platform](https://platform.openai.com/api-keys)
3. **OpenRouter**: [OpenRouter](https://openrouter.ai/)
4. **OCR.space**: [OCR.space](https://ocr.space/ocrapi)

## Railway Deployment

This app is configured for Railway deployment:

1. **Connect to Railway**:
   - Go to [Railway](https://railway.app)
   - Connect your GitHub repository
   - Select this repository

2. **Set Environment Variables**:
   - Add all required API keys in Railway dashboard
   - Railway will automatically detect the Python app

3. **Deploy**:
   - Railway will automatically build and deploy
   - Your app will be available at the generated Railway URL

## Models Used

- **Gemini 2.0 Flash**: Fast data extraction and task breaking
- **Gemini 2.5 Pro**: Advanced code generation and fixing
- **GPT-4o Mini**: Cost-effective text generation
- **Horizon Beta**: Alternative model via OpenRouter

## API Endpoints

- `GET /`: Health check
- `POST /analyze`: Main data analysis endpoint
- `POST /upload`: File upload and processing
- `GET /docs`: Interactive API documentation

## Tech Stack

- **FastAPI**: Modern web framework
- **Playwright**: Web scraping
- **Pandas/NumPy**: Data processing
- **DuckDB**: Fast analytical database
- **Matplotlib/Seaborn**: Data visualization
- **Multiple LLMs**: AI-powered analysis

## License

See LICENSE file for details.
