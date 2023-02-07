![](https://i.imgur.com/xG74tOh.png)
Para explorar o conteúdo visto a respeito de Injeções de dependências, vamos refatorar o código do projeto desse repositório, injetando as dependências através do Provider. Você deve:
- Criar o provider do controller que é utilizado no app;
- Trocá-lo pela criação da instância manual na view;
- Refatorar o header para ser um widget separado, e recuperar a mesma instância do ChangeNotifier na view e no header;
- Testar e averiguar se o código continua funcionando corretamente.