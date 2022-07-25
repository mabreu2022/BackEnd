unit Controller.CATEGORIAS;

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

uses Model.DAO.generic, Model.Entity.CATEGORIAS;

procedure Registry(App : THorse);
begin
  App.Get('/categorias' , Get);
  App.Get('/categorias/:cod', GetCOD);
  App.Post('/categorias', Insert);
  App.Put('/categorias/:cod', Update);
  //App.Delete('/produtos/:cod', Delete);           '
end;

procedure Get(Req : THorseRequest; Res: THorseResponse; Next: TProc);
var
  FDAO : iDAOGeneric<TCATEG>;
begin
  FDAO := TDAOGeneric<TCATEG>.New;
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
