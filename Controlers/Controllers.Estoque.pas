unit Controllers.estoque;

interface

uses
  Horse;

procedure Registry;

implementation

procedure DoGetestoque(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('rota estoque');
end;

procedure DoGetByIdestoque(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  id: string;
begin
  id := Req.Params['id'];

end;

procedure DoPostestoque(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure DoPutestoque(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  id: string;
begin
  id := Req.Params['id'];

end;

procedure DoDeleteestoque(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  id: string;
begin
  id := Req.Params['id'];

end;

procedure Registry;
begin
  THorse
    .Get('/v1/estoque', DoGetestoque)
    .Post('/v1/estoque', DoPostestoque)
    .Get('/v1/estoque/:id', DoGetByIdestoque)
    .Put('/v1/estoque/:id', DoPutestoque)
    .Delete('/v1/estoque/:id', DoDeleteestoque)
end;

end.