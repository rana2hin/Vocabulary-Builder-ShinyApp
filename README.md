# 📚 Vocabulary Builder ShinyApp

**GregMat Vocabulary Builder** – Your companion for mastering English vocabulary with ease! 🚀

<p align="center">
  <img src="https://img.shields.io/badge/Built%20With-R%20%26%20Shiny-blue.svg" alt="Built with R and Shiny">
  <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="License: MIT">
  <img src="https://img.shields.io/badge/Status-Active-brightgreen.svg" alt="Project Status">
  <img src="https://img.shields.io/badge/Version-1.0.0-blueviolet.svg" alt="Version 1.0.0">
  <img src="https://img.shields.io/badge/Made%20With-%E2%9D%A4%EF%B8%8F%20and%20%F0%9F%95%95-red.svg" alt="Made with love and coffee">
</p>

---

### 🔥 Badge Descriptions:

- **Built With R & Shiny**: Highlights the technologies used.
- **MIT License**: Indicates the project is open-source under the MIT license.
- **Status: Active**: Shows the project is currently maintained.
- **Version 1.0.0**: States the initial version.
- **Made With ❤️ and ☕**: Adds a warm, personal touch.

## 🧠 Introduction

Welcome to **Vocabulary Builder**, an intuitive and elegant ShinyApp designed to help learners systematically build and practice their English vocabulary! Whether you're preparing for exams like GRE, SAT, or simply aiming to enhance your word power, this tool is for you! 🌟

---

## 📋 Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Examples](#examples)
- [Troubleshooting](#troubleshooting)
- [Contributors](#contributors)
- [License](#license)

---

## 💾 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/rana2hin/Vocabulary-Builder-ShinyApp.git
   ```
2. Open the project in RStudio.
3. Ensure the necessary packages are installed (see [Dependencies](#dependencies)).

4. Launch the app by running:
   ```r
   shiny::runApp()
   ```

---

## 🚀 Usage

- Start the app via RStudio.
- Choose your word list and start learning!
- Practice quizzes to reinforce your memory.
- Track your progress effortlessly. 📈

---

## ✨ Features

- 📚 **Interactive Word Lists**: Easily browse and study curated vocabulary lists.
- 🧪 **Practice Quizzes**: Test your knowledge through built-in quizzes.
- 📈 **Progress Tracking**: Monitor your learning curve.
- ⚡ **Fast and Lightweight**: Built with performance in mind.

---

## 🛠️ Dependencies

- `shiny`
- `dplyr`
- `readr`
- `stringr`
- `DT`
- `ggplot2`

*(Dependencies are managed via the `renv` environment.)*

---

## ⚙️ Configuration

No additional configuration needed! Just clone, open, and run! 🎯

For advanced customization:
- Modify `word_data_maker.R` to tweak vocabulary lists.
- Adjust UI settings directly in the Shiny app script.

---

## 📖 Documentation

- Vocabulary data is organized inside the `/vocab` folder.
- Scripts like `word_data_maker.R` generate word datasets.
- Project managed with `renv` for dependency isolation.

> For more detailed explanations, please refer to the inline comments within the codebase! 📝

---

## 🧪 Examples

After launching the app:

- Choose "GRE Words" from the dropdown.
- Click "Start Quiz" to begin a session.
- View instant feedback on your answers!

![Quiz Demo](https://media.giphy.com/media/xT5LMzIK1AdZJ5e3n6/giphy.gif)

---

## 🛟 Troubleshooting

- **App won't start?**  
  Ensure all dependencies are installed and R version is up-to-date.

- **Missing Packages?**  
  Use:
  ```r
  install.packages(c("shiny", "dplyr", "readr", "stringr", "DT", "ggplot2"))
  ```

- **`renv` Errors?**  
  Run:
  ```r
  renv::restore()
  ```

---

## 👥 Contributors

| Name    | Role        | GitHub                                |
|---------|-------------|---------------------------------------|
| Rana Zahin | Developer | [@rana2hin](https://github.com/rana2hin) |

🙌 Contributions are welcome! Feel free to fork and submit a pull request.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

> Made with ❤️ and ☕ in R & Shiny!
