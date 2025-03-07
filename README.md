# RCE Translator

A simple Bash script designed for the exploitation phase of the **TryHackMe U.A High School** machine. This tool allows you to send commands to a remote server and decode the output using Base64. It is intended for ethical hacking and educational purposes.

---

## 🚀 Features

- **Remote Command Execution**: Sends commands to a remote server and retrieves the output.
- **Base64 Decoding**: Automatically decodes the server's response using Base64.
- **Colorful Output**: Uses colored text for better readability.
- **Interactive Shell**: Provides an interactive command-line interface for sending commands.
- **Dependency Check**: Ensures required tools (`figlet`, `lolcat`, `curl`, `base64`) are installed.
- **Graceful Exit**: Handles `Ctrl+C` to exit the script cleanly.

---

## 📌 Usage

### Basic Command

```bash
./rce-translator.sh
```

### Example

```bash
❯ ./RCETranslator.sh
    ____  ____________   ______                      __      __            
   / __ \/ ____/ ____/  /_  __/________ _____  _____/ /___ _/ /_____  _____
  / /_/ / /   / __/      / / / ___/ __ `/ __ \/ ___/ / __ `/ __/ __ \/ ___/
 / _, _/ /___/ /___     / / / /  / /_/ / / / (__  ) / /_/ / /_/ /_/ / /    
/_/ |_|\____/_____/    /_/ /_/   \__,_/_/ /_/____/_/\__,_/\__/\____/_/     
                                                                           
Created by: Samuel Laveau (aka Ne4rby)

CMD-> id
uid=33(www-data) gid=33(www-data) groups=33(www-data)
CMD-> quit
[!] Exiting...
```

---

## 🎨 Output Example

### ✅ Command Execution

```bash
CMD-> whoami
www-data
```

### 🛑 Exiting the Tool

```bash
CMD-> exit
[!] Exiting...
```

---

## 🔧 How It Works

1. **Dependency Check**: The script checks if `figlet`, `lolcat`, `curl`, and `base64` are installed. If not, it exits with an error.
2. **Banner Display**: Displays a colorful banner using `figlet` and `lolcat`.
3. **Interactive Shell**: Prompts the user to enter commands.
4. **Command Execution**: Sends the command to the remote server via `curl`.
5. **Base64 Decoding**: Decodes the server's response using `base64`.
6. **Output Display**: Prints the decoded output to the terminal.
7. **Exit Handling**: Allows the user to exit the tool by typing `exit` or `quit`.

---

## ⚠️ Requirements

- **Linux/macOS** (or a system with Bash, `curl`, and `base64`).
- **figlet** and **lolcat** (for banner display):

  ```bash
  sudo apt install figlet lolcat  # Debian-based
  sudo pacman -S figlet lolcat    # Arch-based
  brew install figlet lolcat      # macOS
  ```
  
---

## 📜 License

This script is open-source. Feel free to modify and distribute it!

---

## 🧑‍💻 Author

**Samuel Laveau (aka Ne4rby)**

---

## 🔗 GitHub

[GitHub Repository](https://github.com/ne4rby/RCETranslator)

---

## 🎯 Purpose

This tool is specifically designed for the **exploitation phase** of the **TryHackMe U.A High School** machine. It helps in interacting with the remote server by sending commands and decoding the output, making it easier to identify vulnerabilities and exploit them.

---

**Note**: Use this tool responsibly and only in environments where you have explicit permission to perform penetration testing.
