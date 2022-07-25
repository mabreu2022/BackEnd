unit Model.Entity.Clientes;

interface

uses
  SimpleAttributes;

Type
  [Tabela('CLIFOR')]
  TCLIFOR = class
    private
      FID:         INTEGER;
      FSTATUS:     STRING;
      FMARCA:      STRING;
      FDATA_INC:   TDateTime;
      FDATA_ALT:   TDateTime;
      FDATA_HAB:   TDateTime;
      FCF:         STRING;
      FPFPJ:       STRING;
      FDCTO:       INTEGER;
      FLIM_CRED:   DOUBLE;
      FNOME:       STRING;
      FNOME_FANT:  STRING;
      FTIPRUA:     STRING;
      FTITRUA:     STRING;
      FNOMERUA:    STRING;
      FNUMRUA:     STRING;
      FBAIRRO:     STRING;
      FCIDADE:     STRING;
      FCEP:        STRING;
      FDDD:        STRING;
      FFONE:       STRING;
      FRAMAL:      STRING;
      FFAX:        STRING;
      FCEL:        STRING;
      FCONTATO:    STRING;
      FCPFCNPJ:    STRING;
      FRGIE:       STRING;
      FPCPAG:      STRING;
      FEMAIL:       STRING;
      FBLEMAIL:    STRING;
      FWWW:        STRING;
      FCOMPRA:     STRING;
      FFORMA_PG:   STRING;
      FFRETE:      STRING;
      FID_TRANSP:  INTEGER;
      FCODBANCO:   STRING;
      FCODAGENCIA: STRING;
      FNUMCONTA:   STRING;
      FNOMBANCO:   STRING;
      FNOMAGENCIA: STRING;
      FFONE_R:     STRING;
      FID_UF:      STRING;
      FAPELIDO:    STRING;
    FFMARCA: string;
    procedure SetAPELIDO(const Value: string);
    procedure SetBAIRRO(const Value: string);
    procedure SetBLEMAIL(const Value: string);
    procedure SetCEL(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetCF(const Value: string);
    procedure SetCIDADE(const Value: string);
    procedure SetCODAGENCIA(const Value: string);
    procedure SetCODBANCO(const Value: string);
    procedure SetCOMPRA(const Value: string);
    procedure SetCONTATO(const Value: string);
    procedure SetCPFCNPJ(const Value: string);
    procedure SetDATA_ALT(const Value: TDateTime);
    procedure SetDATA_HAB(const Value: TDAteTime);
    procedure SetDATA_INC(const Value: TDateTime);
    procedure SetDCTO(const Value: Integer);
    procedure SetDDD(const Value: string);
    procedure SetFAX(const Value: string);
    procedure SetFONE(const Value: string);
    procedure SetFONE_R(const Value: string);
    procedure SetFORMA_PG(const Value: string);
    procedure SetFRETE(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetID_TRANSP(const Value: Integer);
    procedure SetID_UF(const Value: string);
    procedure SetLIM_CRED(const Value: Double);
    procedure SetEMAIL(const Value: string);
    procedure SetMARCA(const Value: string);
    procedure SetNOMAGENCIA(const Value: string);
    procedure SetNOMBANCO(const Value: string);
    procedure SetNOME(const Value: String);
    procedure SetNOME_FANT(const Value: string);
    procedure SetNOMERUA(const Value: string);
    procedure SetNUMCONTA(const Value: string);
    procedure SetNUMRUA(const Value: string);
    procedure SetPCPAG(const Value: string);
    procedure SetPFPJ(const Value: string);
    procedure SetRAMAL(const Value: string);
    procedure SetRGIE(const Value: string);
    procedure SetSTATUS(const Value: string);
    procedure SetTIPRUA(const Value: string);
    procedure SetTITRUA(const Value: string);
    procedure SetWWW(const Value: string);

    public
      constructor Create;
      destructor  Destroy; override;

    published
      [Campo('ID'), Pk, AutoInc]
      property ID: Integer read FID write SetID;

      [Campo('STATUS')]
      property STATUS : string read FSTATUS write SetSTATUS;

      [Campo('MARCA')]
      property MARCA : string read FFMARCA write SetMARCA;

      [Campo('DATA_INC')]
      property DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;

      [Campo('DATA_ALT')]
      property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;

      [Campo('DATA_HAB')]
      property DATA_HAB : TDAteTime read FDATA_HAB write SetDATA_HAB;

      [Campo('CF')]
      property CF : string read FCF write SetCF;

      [Campo('PFPJ')]
      property PFPJ : string read FPFPJ write SetPFPJ;

      [Campo('DCTO')]
      property DCTO : Integer read FDCTO write SetDCTO;

      [Campo('LIM_CRED')]
      property LIM_CRED : Double read FLIM_CRED write SetLIM_CRED;

      [Campo('NOME')]
      property NOME: String read FNOME write SetNOME;

      [Campo('NOME_FANT')]
      property NOME_FANT : string read FNOME_FANT write SetNOME_FANT;

      [Campo('TIPRUA')]
      property TIPRUA : string read FTIPRUA write SetTIPRUA;

      [Campo('TITRUA')]
      property TITRUA : string read FTITRUA write SetTITRUA;

      [Campo('NOMERUA')]
      property NOMERUA : string read FNOMERUA write SetNOMERUA;

      [Campo('NUMRUA')]
      property NUMRUA : string read FNUMRUA write SetNUMRUA;

      [Campo('BAIRRO')]
      property BAIRRO : string read FBAIRRO write SetBAIRRO;

      [Campo('CIDADE')]
      property CIDADE : string read FCIDADE write SetCIDADE;

      [Campo('CEP')]
      property CEP : string read FCEP write SetCEP;

      [Campo('DDD')]
      property DDD : string read FDDD write SetDDD;

      [Campo('FONE')]
      property FONE : string read FFONE write SetFONE;

      [Campo('RAMAL')]
      property RAMAL : string read FRAMAL write SetRAMAL;

      [Campo('FAX')]
      property FAX : string read FFAX write SetFAX;

      [Campo('CEL')]
      property CEL : string read FCEL write SetCEL;

      [Campo('CONTATO')]
      property CONTATO : string read FCONTATO write SetCONTATO;

      [Campo('CPFCNPJ')]
      property CPFCNPJ : string read FCPFCNPJ write SetCPFCNPJ;

      [Campo('RGIE')]
      property RGIE : string read FRGIE write SetRGIE;

      [Campo('PCPAG')]
      property PCPAG : string read FPCPAG write SetPCPAG;

      [Campo('EMAIL')]
      property EMAIL : string read FEMAIL write SetEMAIL;

      [Campo('BLEMAIL')]
      property BLEMAIL : string read FBLEMAIL write SetBLEMAIL;

      [Campo('WWW')]
      property WWW : string read FWWW write SetWWW;

      [Campo('COMPRA')]
      property COMPRA : string read FCOMPRA write SetCOMPRA;

      [Campo('FORMA_PG')]
      property FORMA_PG : string read FFORMA_PG write SetFORMA_PG;

       [Campo('FRETE')]
      property FRETE : string read FFRETE write SetFRETE;

      [Campo('ID_TRANSP')]
      property ID_TRANSP : Integer read FID_TRANSP write SetID_TRANSP;

      [Campo('CODBANCO')]
      property CODBANCO : string read FCODBANCO write SetCODBANCO;

       [Campo('CODAGENCIA')]
      property CODAGENCIA : string read FCODAGENCIA write SetCODAGENCIA;

      [Campo('NUMCONTA')]
      property NUMCONTA : string read FNUMCONTA write SetNUMCONTA;

      [Campo('NOMBANCO')]
      property NOMBANCO : string read FNOMBANCO write SetNOMBANCO;

       [Campo('NOMAGENCIA')]
      property NOMAGENCIA : string read FNOMAGENCIA write SetNOMAGENCIA;

      [Campo('FONE_R')]
      property FONE_R : string read FFONE_R write SetFONE_R;

      [Campo('ID_UF')]
      property ID_UF : string read FID_UF write SetID_UF;

      [Campo('APELIDO')]
      property APELIDO : string read FAPELIDO write SetAPELIDO;

  end;

implementation

{ TCLIENTES }



{ TCLIFOR }

constructor TCLIFOR.Create;
begin

end;

destructor TCLIFOR.Destroy;
begin

  inherited;
end;

procedure TCLIFOR.SetAPELIDO(const Value: string);
begin
  FAPELIDO := Value;
end;

procedure TCLIFOR.SetBAIRRO(const Value: string);
begin
  FBAIRRO := Value;
end;

procedure TCLIFOR.SetBLEMAIL(const Value: string);
begin
  FBLEMAIL := Value;
end;

procedure TCLIFOR.SetCEL(const Value: string);
begin
  FCEL := Value;
end;

procedure TCLIFOR.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TCLIFOR.SetCF(const Value: string);
begin
  FCF := Value;
end;

procedure TCLIFOR.SetCIDADE(const Value: string);
begin
  FCIDADE := Value;
end;

procedure TCLIFOR.SetCODAGENCIA(const Value: string);
begin
  FCODAGENCIA := Value;
end;

procedure TCLIFOR.SetCODBANCO(const Value: string);
begin
  FCODBANCO := Value;
end;

procedure TCLIFOR.SetCOMPRA(const Value: string);
begin
  FCOMPRA := Value;
end;

procedure TCLIFOR.SetCONTATO(const Value: string);
begin
  FCONTATO := Value;
end;

procedure TCLIFOR.SetCPFCNPJ(const Value: string);
begin
  FCPFCNPJ := Value;
end;

procedure TCLIFOR.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;

procedure TCLIFOR.SetDATA_HAB(const Value: TDAteTime);
begin
  FDATA_HAB := Value;
end;

procedure TCLIFOR.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;

procedure TCLIFOR.SetDCTO(const Value: Integer);
begin

end;

procedure TCLIFOR.SetDDD(const Value: string);
begin
  FDDD := Value;
end;

procedure TCLIFOR.SetFAX(const Value: string);
begin
  FFAX := Value;
end;

procedure TCLIFOR.SetFONE(const Value: string);
begin
  FFONE := Value;
end;

procedure TCLIFOR.SetFONE_R(const Value: string);
begin
  FFONE_R := Value;
end;

procedure TCLIFOR.SetFORMA_PG(const Value: string);
begin
  FFORMA_PG := Value;
end;

procedure TCLIFOR.SetFRETE(const Value: string);
begin
  FFRETE := Value;
end;

procedure TCLIFOR.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TCLIFOR.SetID_TRANSP(const Value: Integer);
begin
  FID_TRANSP := Value;
end;

procedure TCLIFOR.SetID_UF(const Value: string);
begin
  FID_UF := Value;
end;

procedure TCLIFOR.SetLIM_CRED(const Value: Double);
begin
  FLIM_CRED := Value;
end;

procedure TCLIFOR.SetEMAIL(const Value: string);
begin
  FEMAIL := Value;
end;

procedure TCLIFOR.SetMARCA(const Value: string);
begin
  FFMARCA := Value;
end;

procedure TCLIFOR.SetNOMAGENCIA(const Value: string);
begin
  FNOMAGENCIA := Value;
end;

procedure TCLIFOR.SetNOMBANCO(const Value: string);
begin
  FNOMBANCO := Value;
end;

procedure TCLIFOR.SetNOME(const Value: String);
begin
  FNOME := Value;
end;

procedure TCLIFOR.SetNOMERUA(const Value: string);
begin
  FNOMERUA := Value;
end;

procedure TCLIFOR.SetNOME_FANT(const Value: string);
begin
  FNOME_FANT := Value;
end;

procedure TCLIFOR.SetNUMCONTA(const Value: string);
begin
  FNUMCONTA := Value;
end;

procedure TCLIFOR.SetNUMRUA(const Value: string);
begin
  FNUMRUA := Value;
end;

procedure TCLIFOR.SetPCPAG(const Value: string);
begin
  FPCPAG := Value;
end;

procedure TCLIFOR.SetPFPJ(const Value: string);
begin
  FPFPJ := Value;
end;

procedure TCLIFOR.SetRAMAL(const Value: string);
begin
  FRAMAL := Value;
end;

procedure TCLIFOR.SetRGIE(const Value: string);
begin
  FRGIE := Value;
end;

procedure TCLIFOR.SetSTATUS(const Value: string);
begin
  FSTATUS := Value;
end;

procedure TCLIFOR.SetTIPRUA(const Value: string);
begin
  FTIPRUA := Value;
end;

procedure TCLIFOR.SetTITRUA(const Value: string);
begin
  FTITRUA := Value;
end;

procedure TCLIFOR.SetWWW(const Value: string);
begin
  FWWW := Value;
end;

end.
