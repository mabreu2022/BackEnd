program backend;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.Compression,
  Horse.Jhonson,
  System.SysUtils,
  Model.Connection in 'src\Model\Connection\Model.Connection.pas',
  Model.DAO.generic in 'src\Model\Connection\Model.DAO.generic.pas',
  Model.Entity.Clientes in 'src\Model\Entity\Model.Entity.Clientes.pas',
  Controller.CLIENTES in 'src\Controller\Controller.CLIENTES.pas',
  Model.Entity.Estoque in 'src\Model\Entity\Model.Entity.Estoque.pas',
  Controller.ESTOQUE in 'src\Controller\Controller.ESTOQUE.pas',
  Model.Entity.Produtos in 'src\Model\Entity\Model.Entity.Produtos.pas',
  Controller.PRODUTOS in 'src\Controller\Controller.PRODUTOS.pas',
  Model.Entity.Categorias in 'src\Model\Entity\Model.Entity.Categorias.pas',
  Controller.CATEGORIAS in 'src\Controller\Controller.CATEGORIAS.pas';

Var
    App: THorse;

begin
  App:= THorse.Create;
  App.Use(CORS);
  App.use(Jhonson());

  Controller.CLIENTES.Registry(App);
  Controller.ESTOQUE.Registry(App);
  Controller.PRODUTOS.Registry(App);
  Controller.CATEGORIAS.Registry(App);

  App.Listen(9000,
    procedure(Horse: THorse)
    begin
      WriteLn('Servidor Executando na Porta: ' + IntToStr(Horse.Port));
    end);

end.