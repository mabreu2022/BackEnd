unit Controller.PRODUTOS;

interface

uses
  Horse,
  System.JSON,
  IdHashMessageDigest;

  procedure Registry(App : THorse);
  procedure Get(Req : THorseRequest; Res: THorseResponse; Next: TProc);
  procedure GetCOD(Req : THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Insert(Req : THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Update(Req : THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Delete(Req : THorseRequest; Res: THorseResponse; Next: TProc);

implementation

uses Model.DAO.generic, Model.Entity.PRODUTOS;

procedure Registry(App : THorse);
begin
  App.Get('/produtos' , Get);
  App.Get('/produtos/:cod', GetCOD);
  App.Post('/produtos', Insert);
  App.Put('/produtos/:cod', Update);
  //App.Delete('/produtos/:cod', Delete);           '
end;

procedure Get(Req : THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO : iDAOGeneric<TPRODUTO>;
begin
  FDAO := TDAOGeneric<TPRODUTO>.New;
  Res.Send<TJSONArray>(FDAO.Find);
end;
procedure GetCOD(Req : THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure Insert(Req : THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure Update(Req : THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure Delete(Req : THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

end.
