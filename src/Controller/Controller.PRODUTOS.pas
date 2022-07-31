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
  jResult: TJSONArray;
  Hash : TIdHashMessageDigest5;
  eTag: String;
begin
  //Buscamos od Dados
  FDAO := TDAOGeneric<TPRODUTO>.New;
  JResult:=FDAO.Find;

  //Geramos o Hash da Consulta
  Hash := TIdHashMessageDigest5.Create;
  try
    eTAg:= Hash.HashStringAsHex(jResult.ToString);
  finally
    Hash.Free;
  end;

  //Injeta o eTag no Cabe�alho
  Res.AddHeader('ETag',eTag);

  //Verifica se precisa ou n�o devolver os dados
  if Req.Headers['if-None-Match']  = eTag then
    Res.Status(304)
  else
    Res.Send<TJSONArray>(jResult);

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
