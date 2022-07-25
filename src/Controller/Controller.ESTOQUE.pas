unit Controller.ESTOQUE;

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

uses Model.DAO.generic, Model.Entity.Estoque;

procedure Registry(App : THorse);
begin
  App.Get('/estoque' , Get);
  App.Get('/estoque/:cod', GetCOD);
  App.Post('/estoque', Insert);
  App.Put('/estoque/:cod', Update);
  //App.Delete('/estoque/:cod', Delete);           '
end;

procedure Get(Req : THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO : iDAOGeneric<TESTOQUE>;
begin
  FDAO := TDAOGeneric<TESTOQUE>.New;
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
