## Start GW
/opt/homebrew/bin/httpd -k start

## Comandos Bash
chmod +x *.sh

## Commit Patterns
Estrutura dos commits

### Feat - Indicam que está incluindo um novo recurso 
✨ feat:
🎉 first commit
💡 feat: add comments in code
⚰️ feat: remove dead code
🏷️ feat: add or update types
🛂 feat: add auth and permissions
👔 feat: business rule
🥅 feat: add middlawers error
💩 feat: code that needs improvement
🗃️ feat: db
💥 feat: breaking changes

### Fix - Indicam que está solucionando um problema (bug fix)
✏ fix: typos
🐛 fix: bug
🚑 fix: critical hotfix
🩹 fix: simple fix non-critical issue
🚨 fix: compiler / linter warnings

### Docs - Indicam mudanças na documentação
📝 docs: add README
📝 docs: update README

### Build - Indicam mudanças de build e dependências
📦 build: install dependencies
➖ build: remove
➕ build: add
⬇ build: downgrade
⬆ build: upgrade

### Chore - Indicam atualizações de tarefas de build, configurações de administrador (como por exemplo adicionar um pacote no gitignore)
🧱 chore: setting docker-compose
🙈 chore: update gitignore
⏪ chore: revert changens
🔀 chore: merge
🔥 chore: remove
🚚 chore: move
🚚 chore: rename
🔧 chore: update
🔧 chore: add

### Refactor -  Indicam mudanças devido a refatorações que não alterem sua funcionalidade
🎨 refactor: update structure / format of the code
🏗️ refactor: architectural changes
♻️ refactor: 

### Perf - Indicam alterações de código que estejam relacionadas a performance
⚡️ perf: improve performance

## MYSQL
DESC nome_tabela; -> Descrição de uma tabela
SHOW FULL processlist; -> Ver Processos em andamento
call mysql.rds_kill(id_precesso); -> matar um processo
SELECT fn_unificar_cliente(de,para); -> unificar usuario

## MOBILE
npx create-expo-app --template
npx expo-doctor
npx expo install --check
npx expo install --fix

### Conectar adb por rede
adb install --abi armeabi-v7a
adb kill-server

#CONECT O CELULAR POR USB
adb usb - PEGUE A PORTA 5555 ou 5037
adb tcpip 5037
adb connect <Your Android Device IP Address>:5037


## Comandos NVM
nvm ls-remote → escolha a versão
nvm install v18.20.0 → instalar
nvm use node → versão mais recente

## Comandos Java
/usr/libexec/java_home -> exibe versão do java