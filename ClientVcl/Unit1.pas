unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Redis.Client, Redis.netlib.Indy, Redis.Commons,
  FireDAC.Stan.StorageJSON;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Edit1: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Redis.Values;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lStream : TStringStream;
  lData: TRedisString;
begin
  lStream := TStringStream.Create;
  try
    if FRedis.EXISTS('TAG_PRODUTOS') then
      RestRequest1.Params.AddHeader('if-None-Match', FRedis.GET('TAG_PRODUTOS'));

    try
      RestRequest1.Execute;
      Edit1.Text := RestResponse1.Headers.Values['ETag'] ;
    Except

    end;

    if RestRequest1.Response.StatusCode = 200 then
    begin
      FDMemTable1.SaveToStream(lStream, sfJSON);
      FRedis.&SET('DATASET_PRODUTOS', lStream.DataString);
      FRedis.&SET('eTAG_PRODUTOS', RestResponse1.Headers.Values['ETag']);
    end;

    if RestRequest1.Response.StatusCode = 304 then
    begin
      lData:= FRedis.GET('DATASET_PRODUTOS');
      lStream.WriteString(lData);
      lStream.Position:=0;
      FDMemTable1.LoadFromStream(lStream, sfJSON);
    end;

  finally
    lStream.Free;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FRedis := NewRedisClient;
end;

end.
