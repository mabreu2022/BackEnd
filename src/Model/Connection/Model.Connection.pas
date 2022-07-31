unit Model.Connection;

interface

uses
  System.JSON,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  FireDAC.Comp.DataSet,
  System.Generics.Collections;

  var
    FDriver: TFDPhysFBDriverLink;
    FConnList : TObjectList<TFDconnection>;

  function Connected: Integer;
  procedure Disconnected(Index: Integer);

implementation

function Connected: Integer;
begin
  if not Assigned(FConnList) then
    FConnList := TObjectList<TFDConnection>.Create;

  //FDriver.VendorLib  :='C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll';

  FConnList.Add(TFDConnection.Create(Nil));
  Result:= Pred(FConnList.Count);
  FConnList.Items[Result].Params.DriverID := 'FB';
  FConnList.Items[Result].Params.Database := 'C:\Gersuper\DataBase\GERSUPER.FDB';
  FConnList.Items[Result].Params.UserName := 'SYSDBA';
  FConnList.Items[Result].Params.Password := 'masterkey';
  FConnList.Items[Result].Params.Add('Port=3050');
  FConnList.Items[Result].Params.Add('CharacterSet=utf8');
  FConnList.Items[Result].Params.Add('Protocol= ipTCPIP');
  FConnList.Items[Result].Params.Add('Server=127.0.0.1');
  FConnList.Items[Result].Connected;
end;

procedure Disconnected(Index: Integer);
begin
  FConnList.Items[Index].Connected:= False;
  FConnList.Items[Index].Free;
  FConnList.TrimExcess;
end;

end.
