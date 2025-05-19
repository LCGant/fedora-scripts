# Fedora Scripts

Este é meu repositório pessoal de **scripts para Fedora Linux**, onde armazeno automações simples e úteis que uso no meu dia a dia como desenvolvedor. São pequenos utilitários que ajudam a configurar ambiente, trocar versões de ferramentas e mais.

> ⚠️ Scripts testados no **Fedora Workstation 42+** — use por sua conta e risco.

---

## 📜 Scripts disponíveis

### `trocar-java`

Troca a versão padrão do Java instalada no sistema usando o `alternatives`.

#### 🔧 Como usar:

```bash
./trocar-java
```

O script lista as opções disponíveis e aplica a versão escolhida como padrão global.

---

### `setup-db.sh`

Script que utiliza o [Devilbox](https://github.com/cytopia/devilbox) para iniciar um container MySQL e executar comandos SQL automaticamente.

#### 📦 O que ele faz:

* Verifica se o Docker está instalado.
* Sobe o serviço `mysql` do Devilbox.
* Aguarda o banco iniciar.
* Executa comandos SQL personalizados no banco MySQL dentro do container.
* Aguarda o usuário pressionar Enter para encerrar os serviços.

#### ▶️ Para executar:

```bash
chmod +x setup-db.sh
./setup-db.sh
```

> Por padrão, **Adminer não está incluído neste script**. Caso queira uma interface web, você pode iniciar separadamente com:
>
> ```bash
> docker run -d --name adminer -p 8080:8080 adminer
> ```

---

## 📁 Estrutura do repositório

```
fedora-scripts/
├── scripts/
│   ├── trocar-java        # script para gerenciar versões de Java
│   └── setup-db.sh        # inicia MySQL via Devilbox e executa SQL
└── README.md              # este arquivo
```

---

## ✍️ Autor

Feito por [Lucas G. Antonio](https://github.com/LCGant) com ☕, Linux e dedicação.

Pull requests e melhorias são bem-vindas para qualquer script.

