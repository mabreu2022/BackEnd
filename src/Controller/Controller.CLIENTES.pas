unit Controller.CLIENTES;

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

uses Model.DAO.generic, Model.Entity.Clientes;

procedure Registry(App : THorse);
begin
  App.Get('/clientes' , Get);
  App.Get('/clientes/:cod', GetCOD);
  App.Post('/clientes', Insert);
  App.Put('/clientes/:cod', Update);
  //App.Delete('/clientes/:cod', Delete);           '
end;

procedure Get(Req : THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO : iDAOGeneric<TCLIFOR>;
begin
  FDAO := TDAOGeneric<TCLIFOR>.New;
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
