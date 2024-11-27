# Payload Generator

**Payload Generator** is a Python script designed to create undetectable PowerShell reverse shell payloads. It provides options to generate two types of payloads (small and big) and includes an optional fake error message feature to disguise malicious activities

## Features

- **Payload Options**: Generate two types of PowerShell reverse shell payloads:
  - **Small Payload**
  - **Big Payload**
- **Custom Error Messages**: Option to embed a fake error message in the payload for added stealth.
- **Payload Customization**: Easily configure listener IP (`LHOST`) and port (`LPORT`).
- **Hexadecimal IP Conversion**: Converts IP addresses into hexadecimal format for obfuscation.

## Prerequisites

- Python 3.x installed on your system.
- A `payloads` folder in the script's directory containing:
  - `powershell-reverse-shell-small.ps1`
  - `powershell-reverse-shell-big.ps1`
- Knowledge of using `ps2exe` (optional) to convert `.ps1` files to `.exe` (Windows only).

## Setup

1. Clone this repository or download the script.
2. Ensure you have the necessary payload files in the `payloads` folder:
   - `powershell-reverse-shell-small.ps1`
   - `powershell-reverse-shell-big.ps1`

## Usage

1. Run the script:
   ```bash
   python3 payload_generator.py
   ```
2. Choose a payload type:
   - **1** for small PowerShell reverse shell.
   - **2** for big PowerShell reverse shell.
3. Enter your listener IP address (`LHOST`) and port (`LPORT`).
4. Optionally, add a custom fake error message for better stealth:
   - Enter the **title** and **body** for the error message.

5. The payload will be generated as:
   - `payload.ps1` for the small payload.
   - `payload_big.ps1` for the big payload.

6. (Optional) Convert the `.ps1` payload into an executable:
   - Use `ps2exe` for Windows (be aware of antivirus detection risks).

## Example

Generating a small payload with a custom error message:

```plaintext
Choose your undetectable payload 1/2 => 1
LHOST => 192.168.1.10
LPORT => 4444
Do you want to add a custom fake error message to the payload? yes/no => yes
Error message title => System Error
Error message body => An unexpected error occurred. Please try again later.
[+] payload generated as payload.ps1
[*] now you can convert your payload.ps1 to an executable with ps2exe on windows.
```

## Notes

- Be cautious of antivirus detections, especially when converting `.ps1` payloads to executables.
- This tool is intended for ethical purposes only. Misuse for illegal activities is strictly prohibited.

## Disclaimer

This project is for **educational purposes** only. The author is not responsible for any misuse or damage caused by this script. Always obtain proper authorization before testing any system.
