unit Model.Entity.Categorias;

interface

uses
  SimpleAttributes, Data.DB;

Type
  [Tabela('CATEG')]
  TCATEG = class
    private
       FID :        INTEGER;
       FSTATUS:     STRING;
       FMARCA:      STRING;
       FDATA_INC:   TDATETIME;
       FDATA_ALT:   TDATETIME;
       FDATA_HAB:   TDATETIME;
       FDESCRICAO:  STRING;
       FCODCAT:     STRING;
    procedure SetCODCAT(const Value: string);
    procedure SetDATA_ALT(const Value: TDateTime);
    procedure SetDATA_HAB(const Value: TDateTime);
    procedure SetDATA_INC(const Value: TDAteTime);
    procedure SetDESCRICAO(const Value: string);
    procedure SetFMARCA(const Value: string);
    procedure SetID(const Value: integer);
    procedure SetSTATUS(const Value: string);
    public
      constructor Create;
      destructor  Destroy; override;

    published
       [Campo('ID')]
       property ID : integer read FID write SetID;

      [Campo('STATUS')]
      property STATUS : string read  FSTATUS write SetSTATUS;

      [Campo('MARCA')]
      property MARCA : string read FMARCA write SetFMARCA;

      [Campo('DATA_INC')]
      property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;

      [Campo('DATA_ALT')]
      property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;

      [Campo('DATA_HAB')]
      property DATA_HAB : TDateTime read FDATA_HAB write SetDATA_HAB;

      [Campo('DESCRICAO')]
      property DESCRICAO : string read FDESCRICAO write SetDESCRICAO;

      [Campo('CODCAT')]
      property CODCAT : string read FCODCAT write SetCODCAT;

  end;

implementation

{ TCATEG }

constructor TCATEG.Create;
begin

end;

destructor TCATEG.Destroy;
begin

  inherited;
end;

procedure TCATEG.SetCODCAT(const Value: string);
begin
  FCODCAT := Value;
end;

procedure TCATEG.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;

procedure TCATEG.SetDATA_HAB(const Value: TDateTime);
begin
  FDATA_HAB := Value;
end;

procedure TCATEG.SetDATA_INC(const Value: TDAteTime);
begin
  FDATA_INC := Value;
end;

procedure TCATEG.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TCATEG.SetFMARCA(const Value: string);
begin
  FMARCA := Value;
end;

procedure TCATEG.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TCATEG.SetSTATUS(const Value: string);
begin
  FSTATUS := Value;
end;

end.
