unit Model.Entity.Produtos;

interface

uses
  SimpleAttributes, Data.DB;

Type
  [Tabela('PRODUTO')]
  TPRODUTO = class
    private
       FID :               INTEGER;
       FSTATUS:            STRING;
       FMARCA:             STRING;
       FDATA_INC:          TDATETIME;
       FDATA_ALT:          TDATETIME;
       FDATA_HAB:          TDATETIME;
       FID_CATEG:          INTEGER;
       FID_SUBCATEG:       INTEGER;
       FID_EMB:            INTEGER;
       FID_UNI:            INTEGER;
       FID_CAP:            INTEGER;
       FID_MARCA:          INTEGER;
       FESPECIFICACAO:     STRING;
       FCODEAN13:          STRING;
       FCODPROD:           STRING;
       FDESCRICAO:         STRING;
       FENT_GRAMA:         DOUBLE;
       FENT_QUILO:         DOUBLE;
       FPCANTUNIDADE:      DOUBLE;
       FPCATUUNIDADE:      DOUBLE;
       FPCMEDUNIDADE:      DOUBLE;
       FPCATUSUBUNIDADE:   DOUBLE;
       FTXPERCENTLUCRO:    DOUBLE;
       FTXPERCENTLUCROSUB: DOUBLE;
       FQTESUBUNIDADE:     DOUBLE;
       FEST_MIN:           DOUBLE;
       FEST_MAX:           DOUBLE;
       FEST_ANT:           DOUBLE;
       FEST_ATU:           DOUBLE;
       FPPRO:              DOUBLE;
       FPROMOCAO:          STRING;
       FL_MIN:             DOUBLE;
       FL_MAX:             DOUBLE;
       FL_MED:             DOUBLE;
       FL_EFE:             DOUBLE;
       FQTPRODVEND:        DOUBLE;
       FLOC:               STRING;
       FICMS:              DOUBLE;
       //FRESENHA:           TBLOBFIELD;
       //FCAPA:              TBLOBFIELD;
       FSITTRIBUTARIA:     DOUBLE;
       FDESCONTOCOMPRA:    DOUBLE;
       FVRVENDAANTUNI:     DOUBLE;
       FCONTSUBUNIDADE:    DOUBLE;
    //procedure SetCAPA(const Value: TBlobField);
    procedure SetCODEAN13(const Value: string);
    procedure SetCODPROD(const Value: string);
    procedure SetCONTSUBUNIDADE(const Value: double);
    procedure SetDATA_ALT(const Value: TDateTime);
    procedure SetDATA_HAB(const Value: TDateTime);
    procedure SetDATA_INC(const Value: TDAteTime);
    procedure SetDESCONTOCOMPRA(const Value: double);
    procedure SetDESCRICAO(const Value: string);
    procedure SetENT_GRAMA(const Value: double);
    procedure SetENT_QUILO(const Value: double);
    procedure SetESPECIFICACAO(const Value: string);
    procedure SetEST_ANT(const Value: double);
    procedure SetEST_ATU(const Value: double);
    procedure SetEST_MAX(const Value: double);
    procedure SetEST_MIN(const Value: double);
    procedure SetFMARCA(const Value: string);
    procedure SetICMS(const Value: double);
    procedure SetID(const Value: integer);
    procedure SetID_CAP(const Value: integer);
    procedure SetID_CATEG(const Value: integer);
    procedure SetID_EMB(const Value: integer);
    procedure SetID_MARCA(const Value: integer);
    procedure SetID_SUBCATEG(const Value: integer);
    procedure SetID_UNI(const Value: integer);
    procedure SetL_EFE(const Value: double);
    procedure SetL_MAX(const Value: double);
    procedure SetL_MED(const Value: double);
    procedure SetL_MIN(const Value: double);
    procedure SetLOC(const Value: string);
    procedure SetPCANTUNIDADE(const Value: double);
    procedure SetPCATUSUBUNIDADE(const Value: double);
    procedure SetPCATUUNIDADE(const Value: double);
    procedure SetPCMEDUNIDADE(const Value: double);
    procedure SetPPRO(const Value: double);
    procedure SetPROMOCAO(const Value: string);
    procedure SetQTESUBUNIDADE(const Value: double);
    procedure SetQTPRODVEND(const Value: double);
    //procedure SetRESENHA(const Value: TBlobField);
    procedure SetSITTRIBUTARIA(const Value: double);
    procedure SetSTATUS(const Value: string);
    procedure SetTXPERCENTLUCRO(const Value: double);
    procedure SetTXPERCENTLUCROSUB(const Value: double);
    procedure SetVRVENDAANTUNI(const Value: double);

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
      property DATA_INC : TDAteTime read FDATA_INC write SetDATA_INC;

      [Campo('DATA_ALT')]
      property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;

      [Campo('DATA_HAB')]
      property DATA_HAB : TDateTime read FDATA_HAB write SetDATA_HAB;

      [Campo('ID_CATEG')]
      property ID_CATEG : integer read FID_CATEG write SetID_CATEG;

      [Campo('ID_SUBCATEG')]
      property ID_SUBCATEG : integer read FID_SUBCATEG write SetID_SUBCATEG;

      [Campo('ID_EMB')]
      property ID_EMB : integer read FID_EMB write SetID_EMB;

      [Campo('ID_UNI')]
      property ID_UNI : integer read FID_UNI write SetID_UNI;

      [Campo('ID_CAP')]
      property ID_CAP : integer read FID_CAP write SetID_CAP;

      [Campo('ID_MARCA')]
      property ID_MARCA : integer read FID_MARCA write SetID_MARCA;

      [Campo('ESPECIFICACAO')]
      property ESPECIFICACAO : string read FESPECIFICACAO write SetESPECIFICACAO;

      [Campo('CODEAN13')]
      property CODEAN13 : string read FCODEAN13 write SetCODEAN13;

      [Campo('CODPROD')]
      property CODPROD : string read FCODPROD write SetCODPROD;

      [Campo('DESCRICAO')]
      property DESCRICAO: string read FDESCRICAO write SetDESCRICAO;

      [Campo('ENT_GRAMA')]
      property ENT_GRAMA : double read FENT_GRAMA write SetENT_GRAMA;

      [Campo('ENT_QUILO')]
      property ENT_QUILO : double read FENT_QUILO write SetENT_QUILO;

      [Campo('PCANTUNIDADE')]
      property PCANTUNIDADE : double read FPCANTUNIDADE write SetPCANTUNIDADE;

      [Campo('PCATUUNIDADE')]
      property PCATUUNIDADE : double read FPCATUUNIDADE write SetPCATUUNIDADE;

      [Campo('PCMEDUNIDADE')]
      property PCMEDUNIDADE : double read FPCMEDUNIDADE write SetPCMEDUNIDADE;

      [Campo('PCATUSUBUNIDADE')]
      property PCATUSUBUNIDADE : double read FPCATUSUBUNIDADE write SetPCATUSUBUNIDADE;

      [Campo('TXPERCENTLUCRO')]
      property TXPERCENTLUCRO : double read FTXPERCENTLUCRO write SetTXPERCENTLUCRO;

      [Campo('TXPERCENTLUCROSUB')]
      property TXPERCENTLUCROSUB : double read FTXPERCENTLUCROSUB write SetTXPERCENTLUCROSUB;

      [Campo('QTESUBUNIDADE')]
      property QTESUBUNIDADE : double read FQTESUBUNIDADE write SetQTESUBUNIDADE;

      [Campo('EST_MIN')]
      property EST_MIN : double read FEST_MIN write SetEST_MIN;

      [Campo('EST_MAX')]
      property EST_MAX : double read FEST_MAX write SetEST_MAX;

      [Campo('EST_ANT')]
      property EST_ANT : double read FEST_ANT write SetEST_ANT;

      [Campo('EST_ATU')]
      property EST_ATU : double read FEST_ATU write SetEST_ATU;

      [Campo('PPRO')]
      property PPRO : double read FPPRO write SetPPRO;

      [Campo('PROMOCAO')]
      property PROMOCAO : string read FPROMOCAO write SetPROMOCAO;

      [Campo('L_MIN')]
      property L_MIN : double read FL_MIN write SetL_MIN;

      [Campo('L_MAX')]
      property L_MAX : double read FL_MAX write SetL_MAX;

      [Campo('L_MED')]
      property L_MED : double read FL_MED write SetL_MED;

      [Campo('L_EFE')]
      property L_EFE : double read FL_EFE write SetL_EFE;

      [Campo('QTPRODVEND')]
      property QTPRODVEND : double read FQTPRODVEND write SetQTPRODVEND;

      [Campo('LOC')]
      property LOC : string read FLOC write SetLOC;

      [Campo('ICMS')]
      property ICMS : double read FICMS write SetICMS;

//      [Campo('RESENHA')]
//      property RESENHA : TBlobField read FRESENHA write SetRESENHA;
//
//      [Campo('CAPA')]
//      property CAPA : TBlobField read FCAPA write SetCAPA;

      [Campo('SITTRIBUTARIA')]
      property SITTRIBUTARIA : double read FSITTRIBUTARIA write SetSITTRIBUTARIA;

      [Campo('DESCONTOCOMPRA')]
      property DESCONTOCOMPRA : double read FDESCONTOCOMPRA write SetDESCONTOCOMPRA;

      [Campo('VRVENDAANTUNI')]
      property VRVENDAANTUNI : double read FVRVENDAANTUNI write SetVRVENDAANTUNI;

      [Campo('CONTSUBUNIDADE')]
      property CONTSUBUNIDADE : double read FCONTSUBUNIDADE write SetCONTSUBUNIDADE;


  end;

implementation

{ TPRODUTO }

constructor TPRODUTO.Create;
begin

end;

destructor TPRODUTO.Destroy;
begin

  inherited;
end;

//procedure TPRODUTO.SetCAPA(const Value: TBlobField);
//begin
//  FCAPA := Value;
//end;

procedure TPRODUTO.SetCODEAN13(const Value: string);
begin
  FCODEAN13 := Value;
end;

procedure TPRODUTO.SetCODPROD(const Value: string);
begin
  FCODPROD := Value;
end;

procedure TPRODUTO.SetCONTSUBUNIDADE(const Value: double);
begin
  FCONTSUBUNIDADE := Value;
end;

procedure TPRODUTO.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;

procedure TPRODUTO.SetDATA_HAB(const Value: TDateTime);
begin
  FDATA_HAB := Value;
end;

procedure TPRODUTO.SetDATA_INC(const Value: TDAteTime);
begin
  FDATA_INC := Value;
end;

procedure TPRODUTO.SetDESCONTOCOMPRA(const Value: double);
begin
  FDESCONTOCOMPRA := Value;
end;

procedure TPRODUTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TPRODUTO.SetENT_GRAMA(const Value: double);
begin
  FENT_GRAMA := Value;
end;

procedure TPRODUTO.SetENT_QUILO(const Value: double);
begin
  FENT_QUILO := Value;
end;

procedure TPRODUTO.SetESPECIFICACAO(const Value: string);
begin
  FESPECIFICACAO := Value;
end;

procedure TPRODUTO.SetEST_ANT(const Value: double);
begin
  FEST_ANT := Value;
end;

procedure TPRODUTO.SetEST_ATU(const Value: double);
begin
  FEST_ATU := Value;
end;

procedure TPRODUTO.SetEST_MAX(const Value: double);
begin
  FEST_MAX := Value;
end;

procedure TPRODUTO.SetEST_MIN(const Value: double);
begin
  FEST_MIN := Value;
end;

procedure TPRODUTO.SetFMARCA(const Value: string);
begin
  FMARCA := Value;
end;

procedure TPRODUTO.SetICMS(const Value: double);
begin
  FICMS := Value;
end;

procedure TPRODUTO.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TPRODUTO.SetID_CAP(const Value: integer);
begin
  FID_CAP := Value;
end;

procedure TPRODUTO.SetID_CATEG(const Value: integer);
begin
  FID_CATEG := Value;
end;

procedure TPRODUTO.SetID_EMB(const Value: integer);
begin
  FID_EMB := Value;
end;

procedure TPRODUTO.SetID_MARCA(const Value: integer);
begin
  FID_MARCA := Value;
end;

procedure TPRODUTO.SetID_SUBCATEG(const Value: integer);
begin
  FID_SUBCATEG := Value;
end;

procedure TPRODUTO.SetID_UNI(const Value: integer);
begin
  FID_UNI := Value;
end;

procedure TPRODUTO.SetLOC(const Value: string);
begin
  FLOC := Value;
end;

procedure TPRODUTO.SetL_EFE(const Value: double);
begin
  FL_EFE := Value;
end;

procedure TPRODUTO.SetL_MAX(const Value: double);
begin
  FL_MAX := Value;
end;

procedure TPRODUTO.SetL_MED(const Value: double);
begin
  FL_MED := Value;
end;

procedure TPRODUTO.SetL_MIN(const Value: double);
begin
  FL_MIN := Value;
end;

procedure TPRODUTO.SetPCANTUNIDADE(const Value: double);
begin
  FPCANTUNIDADE := Value;
end;

procedure TPRODUTO.SetPCATUSUBUNIDADE(const Value: double);
begin
  FPCATUSUBUNIDADE := Value;
end;

procedure TPRODUTO.SetPCATUUNIDADE(const Value: double);
begin
  FPCATUUNIDADE := Value;
end;

procedure TPRODUTO.SetPCMEDUNIDADE(const Value: double);
begin
  FPCMEDUNIDADE := Value;
end;

procedure TPRODUTO.SetPPRO(const Value: double);
begin
  FPPRO := Value;
end;

procedure TPRODUTO.SetPROMOCAO(const Value: string);
begin
  FPROMOCAO := Value;
end;

procedure TPRODUTO.SetQTESUBUNIDADE(const Value: double);
begin
  FQTESUBUNIDADE := Value;
end;

procedure TPRODUTO.SetQTPRODVEND(const Value: double);
begin
  FQTPRODVEND := Value;
end;

//procedure TPRODUTO.SetRESENHA(const Value: TBlobField);
//begin
//  FRESENHA := Value;
//end;

procedure TPRODUTO.SetSITTRIBUTARIA(const Value: double);
begin
  FSITTRIBUTARIA := Value;
end;

procedure TPRODUTO.SetSTATUS(const Value: string);
begin
  FSTATUS := Value;
end;

procedure TPRODUTO.SetTXPERCENTLUCRO(const Value: double);
begin
  FTXPERCENTLUCRO := Value;
end;

procedure TPRODUTO.SetTXPERCENTLUCROSUB(const Value: double);
begin
  FTXPERCENTLUCROSUB := Value;
end;

procedure TPRODUTO.SetVRVENDAANTUNI(const Value: double);
begin
  FVRVENDAANTUNI := Value;
end;

end.
