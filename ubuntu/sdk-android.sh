echo " ################################## \n \n Autalizando Repositórios \n \n ##################################"
sleep 2
sudo apt update -y
sudo rm /var/cache/apt/archives/lock

echo " ################################## \n \n Instalando java e unzip \n \n ##################################"
sleep 5
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
sudo apt-get install -y unzip


echo " ################################## \n \n Baixando SDK Android Manager \n \n ##################################"
sleep 2
sudo rm -rf sdk-*
sudo wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip

echo " ################################## \n \n Instalando SDK Android Manager\n \n ##################################"
sleep 2
sudo rm -rf /opt/android-sdk/
sudo mkdir /opt/android-sdk/
sudo unzip sdk-tools-linux-3859397.zip -d /opt/android-sdk/
sudo chmod -R 777 /opt/android-sdk/


echo " ################################## \n \n Configurando variáveis de ambiente \n \n ##################################"
sleep 2

if cat ~/.profile | grep ANDROID_HOME
then
  echo "VARIAVEIS de AMbiente ja existe!"
  echo $PATH
  echo $ANDROID_HOME
  sleep 5
else
  sudo echo "export PATH=$PATH:/opt/android-sdk/tools:/opt/android-sdk/tools/bin" >> $HOME/.profile
  sudo echo "export ANDROID_HOME=/opt/android-sdk" >> $HOME/.profile
  echo "Variaveis adicionadas com sucesso!"
fi


echo " ################################## \n \n Reload Shell \n \n ##################################"
sleep 3
. ~/.profile

echo "Variavel PATH"
echo $PATH
echo "Variavel ANDROID_HOME"
echo $ANDROID_HOME

echo " ################################## \n \n Instalando Build Tools versao 25.0.3 e android-25 \n \n ##################################"
sleep 5
sudo rm -vrf $HOME/.android/repositories.cfg
sleep 2
sudo touch $HOME/.android/repositories.cfg
ls $HOME/.android/repositories.cfg

sdkmanager "tools"
sleep 2
sdkmanager "build-tools;25.0.3"
sleep 2
sdkmanager "platforms;android-25"

echo " ################################## \n \nAceitando termos de licencas \n \n ##################################"
sleep 2
yes "y" | sdkmanager --licenses 


echo " ################################## \n \n Pronto Tudo OK \n \n ##################################"
sleep 2
