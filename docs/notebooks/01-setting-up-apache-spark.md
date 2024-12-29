=== "Linux"

    ## Linux Installation (Ubuntu/Debian/CentOS/Fedora)

    1. **Check Java Installation**:

    ```bash
    java -version
    ```

    If Java isn’t installed or you need a different version, install OpenJDK:

    ```bash
    # Ubuntu/Debian
    sudo apt-get update
    sudo apt-get install openjdk-8-jdk -y

    # Fedora/CentOS
    sudo yum install java-1.8.0-openjdk -y
    ```

    2. **Download Spark Prebuilt Binaries**:

    - Go to [https://spark.apache.org/downloads.html](https://spark.apache.org/downloads.html)
    - Choose a Spark release (e.g., Spark 3.3.x) and a package type built for Hadoop (e.g., Hadoop 3.3).
    - Download the `.tgz` file.

    3. **Extract Spark**:

    ```bash
    tar xvf spark-3.3.0-bin-hadoop3.tgz
    mv spark-3.3.0-bin-hadoop3/ ~/spark
    ```

    4. **Add Spark to PATH**:
    Append the following to your `~/.bashrc` (or `~/.zshrc`, depending on your shell):

    ```bash
    export SPARK_HOME="$HOME/spark"
    export PATH="$SPARK_HOME/bin:$PATH"
    ```

    Then reload:

    ```bash
    source ~/.bashrc
    ```

    5. **Verify Installation**:

    ```bash
    spark-shell --version
    # or
    pyspark --version
    ```

    You should see Spark version info printed to the console.

=== "macOS"

    ## macOS Installation

    1. **Install Homebrew (Optional but Recommended)**:
    Homebrew simplifies package installation on macOS. If you don’t have it:

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

    2. **Install Java**:

    ```bash
    brew update
    brew install openjdk@8
    # or brew install openjdk@11
    ```

    Then add Java to your PATH (Homebrew will often print instructions to do so).

    3. **Download Spark Prebuilt Binaries**:

    - Visit [https://spark.apache.org/downloads.html](https://spark.apache.org/downloads.html)
    - Select the latest Spark version (e.g., 3.3.x) and the Hadoop build.
    - Download the `.tgz` archive.

    4. **Extract and Move Spark**:

    ```bash
    tar xvf spark-3.3.0-bin-hadoop3.tgz
    mv spark-3.3.0-bin-hadoop3/ ~/spark
    ```

    5. **Set Environment Variables**:
    Append to your `~/.zshrc` or `~/.bash_profile`:

    ```bash
    export SPARK_HOME="$HOME/spark"
    export PATH="$SPARK_HOME/bin:$PATH"
    ```

    Then reload:

    ```bash
    source ~/.zshrc  # or source ~/.bash_profile
    ```

    6. **Verify Installation**:

    ```bash
    pyspark --version
    ```

    Spark version info should appear.

=== "Windows Native"

    ## Windows (Native) Installation

    1. **Install Java**:

    - Download [Adoptium Temurin](https://adoptium.net/) or [Oracle JDK](https://www.oracle.com/java/technologies/downloads/) for Windows (prefer Java 8 or 11).
    - Run the installer. By default, it installs in `C:\Program Files\Java\...`
    - Ensure `JAVA_HOME` is set. Go to **Control Panel** → **System** → **Advanced system settings** → **Environment Variables**, add:
    - Variable name: `JAVA_HOME`
    - Variable value: `C:\Program Files\Java\jdk1.8.0_xxx` (for example)
    - Add `%JAVA_HOME%\bin` to your **Path**.

    2. **Download Spark Prebuilt Binaries**:

    - From [https://spark.apache.org/downloads.html](https://spark.apache.org/downloads.html), pick a package built for Hadoop 3.x.
    - Unzip the downloaded `.tgz` file using 7-Zip or WinRAR.

    3. **Place Spark Folder**:

    - Move the unzipped folder to a convenient location, e.g. `C:\spark`.

    4. **Set Environment Variables**:

    - Under **System Properties** → **Environment Variables**, create a new user or system variable:
    - Variable name: `SPARK_HOME`
    - Variable value: `C:\spark`
    - Add `C:\spark\bin` to your **Path**.

    5. **Install Python (if not installed)**:

    - Visit [python.org/downloads](https://www.python.org/downloads/) and install Python 3.7+.
    - Ensure you check **"Add Python to PATH"** during installation.

    6. **Verify Installation**:

    - Open **Command Prompt** or **PowerShell** and run:
    ```powershell
    pyspark --version
    ```
    - Spark version info should appear.

=== "Windows WSL2"

    ## Windows WSL2 (Ubuntu) Installation

    1. **Confirm WSL2 Setup**:

    - Install [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install) and choose Ubuntu 20.04 or later.
    - Launch the Ubuntu terminal.

    2. **Check/Install Java**:

    ```bash
    java -version
    # If needed:
    sudo apt-get update
    sudo apt-get install openjdk-8-jdk
    ```

    3. **Download Spark Prebuilt Binaries**:

    ```bash
    # Inside Ubuntu WSL2
    wget https://downloads.apache.org/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz
    ```

    4. **Extract Spark**:

    ```bash
    tar xvf spark-3.3.0-bin-hadoop3.tgz
    mv spark-3.3.0-bin-hadoop3/ ~/spark
    ```

    5. **Set Environment Variables**:

    ```bash
    echo "export SPARK_HOME=\"$HOME/spark\"" >> ~/.bashrc
    echo "export PATH=\"$SPARK_HOME/bin:\$PATH\"" >> ~/.bashrc
    source ~/.bashrc
    ```

    6. **Verify Installation**:

    ```bash
    pyspark --version
    ```

    Spark version info should appear.