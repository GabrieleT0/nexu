
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install openjdk@11

sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc

java --module-path ./javafx-sdk-17.0.13/lib:./jaxb-api-2.4.0.jar:./jaxb-runtime-2.4.0.jar:./javax.activation-1.2.0.jar:./jna-5.16.0.jar --add-modules javafx.controls,javafx.fxml,java.xml.bind,java.activation -jar nexu.jar