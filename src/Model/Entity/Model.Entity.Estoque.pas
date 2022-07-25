unit Model.Entity.Estoque;

interface

uses
  SimpleAttributes, Data.DB;

Type
  [Tabela('ESTOQUE')]
  TESTOQUE = class
    private
      FCODEAN13:       STRING;
      FSTATUS:         STRING;
      FMARCA:          STRING;
      FDATA_INC:       TDATETIME;
      FDATA_ALT:       TDATETIME;
      FDATA_HAB:       TDATETIME;
      FID_SUBCATEG:    INTEGER;
      FDESCRICAO:      STRING;
      FID_MARCA:       INTEGER;
      FID_EMB:         INTEGER;
      FENT_GRAMA:      Double;
      FENT_QUILO:      Double;
      FPESO_KG:        Double;
      FPESO_G:         Double;
      FESPECIFICACAO:  STRING;
      FPCANTUNIDADE:   Double;
      FPCATUUNIDADE:   Double;
      FP_PRO:          Double;
      FPROMOCAO:       STRING;
      FL_MIN:          Double;
      FL_MAX:          Double;
      FL_MED:          Double;
      FL_EFE:          Double;
      FEST_MIN:        Double;
      FEST_MAX:        Double;
      FEST_ATU:        Double;
      FLOC:            STRING;
      FICMS:           Double;
      //FRESENHA:        TBLOB;//VERIFICAR
      //FCAPA:           TBLOB;//VERIFICAR
      FSITTRIBUTARIA:  Double;
      FDESCONTOCOMPRA: Double;
      FINICIAL:        STRING;
      FID_CAP:         INTEGER;
      FID_CATEG:       INTEGER;
      FID_UNI:         INTEGER;
      FCODPROD:        STRING;
      FCODCAT:         STRING;
      FCODSUBCAT:      STRING;
      FPRECI:          STRING;
      FCONTROL:        STRING;
      FSUBUNIDADE:     STRING;
      FQTESUBUNIDADE:  Double;
      FEST_ANT:        Double;
      FPCMEDUNIDADE:   Double;
      FQTPRODVEND:     Double;
      FTXPERCENTLUCRO: Double;
      FTXPERCENTLUCROSUB: Double;
      FID:             Integer;
      FNOME:           String;

      procedure SetCODEAN13(const Value:      string);
      procedure SetSTATUS(const Value:        string);
      procedure SetMARCA(const Value:         string);
      procedure SetDATA_INC(const Value:      TDateTime);
      procedure SetDATA_ALT(const Value:      TDateTime);
      procedure SetDATA_HAB(const Value:      TDateTime);
      procedure SetID_SUBCATEG(const Value:   integer);
      procedure SetDESCRICAO(const Value:     string);
      procedure SetID_MARCA(const Value:      INTEGER);
      procedure SetID_EMB(const Value:        INTEGER);
      procedure SetENT_GRAMA(const Value:     Double);
      procedure SetENT_QUILO(const Value:     Double);
      procedure SetPESO_KG(const Value:       Double);
      procedure SetPESO_G(const Value:        Double);
      procedure SetESPECIFICACAO(const Value: string);
      procedure SetPCANTUNIDADE(const Value:  Double);
      procedure SetPCATUUNIDADE(const Value:  Double);
      procedure SetP_PRO(const Value:          Double);
      procedure SetPROMOCAO(const Value:      string);
      procedure SetL_MIN(const Value:         Double);
      procedure SetL_MAX(const Value:         Double);
      procedure SetL_MED(const Value:         Double);
      procedure SetL_EFE(const Value:         Double);
      procedure SetEST_MIN(const Value:       Double);
      procedure SetEST_MAX(const Value:       Double);
      procedure SetEST_ATU(const Value:       Double);
      procedure SetLOC(const Value:           STRING);
      procedure SetICMS(const Value:           Double);
      //procedure SetRESENHA(const Value:        TBLOB);//VERIFICAR
      //procedure SetCAPA(const Value:           TBLOB);//VERIFICAR
      procedure SetSITTRIBUTARIA(const Value:  Double);
      procedure SetDESCONTOCOMPRA(const Value: Double);
      procedure SetINICIAL(const Value:        STRING);
      procedure SetID_CAP(const Value:         INTEGER);
      procedure SetID_CATEG(const Value:       INTEGER);
      procedure SetID_UNI(const Value:         INTEGER);
      procedure SetCODPROD(const Value:        STRING);
      procedure SetCODCAT(const Value:         STRING);
      procedure SetCODSUBCAT(const Value:      STRING);
      procedure SetPRECI(const Value:          STRING);
      procedure SetCONTROL(const Value:        STRING);
      procedure SetSUBUNIDADE(const Value:     STRING);
      procedure SetQTESUBUNIDADE(const Value:  Double);
      procedure SetEST_ANT(const Value:        Double);
      procedure SetPCMEDUNIDADE(const Value:   Double);
      procedure SetQTPRODVEND(const Value:     Double);
      procedure SetTXPERCENTLUCRO(const Value: Double);
      procedure SetTXPERCENTLUCROSUB(const Value: Double);

    public
      constructor Create;
      destructor  Destroy; override;

    published
       [Campo('CODEAN13')]
       property CODEAN13 : string read FCODEAN13 write SetCODEAN13;

      [Campo('STATUS')]
      property STATUS : string read  FSTATUS write SetSTATUS;

      [Campo('MARCA')]
      property MARCA : string read FMARCA write SetMARCA;

      [Campo('DATA_INC')]
      property  DATA_INC : TDateTime read FDATA_INC write SetDATA_INC;

      [Campo('DATA_ALT')]
      property DATA_ALT : TDateTime read FDATA_ALT write SetDATA_ALT;

      [Campo('DATA_HAB')]
      property DATA_HAB : TDateTime read FDATA_HAB write SetDATA_HAB;

      [Campo('ID_SUBCATEG')]
      property ID_SUBCATEG : Integer read FID_SUBCATEG write SetID_SUBCATEG;

      [Campo('DESCRICAO')]
      property DESCRICAO : string read FDESCRICAO write SetDESCRICAO;

      [Campo('ID_MARCA')]
      property ID_MARCA : Integer read FID_MARCA write SetID_MARCA;

      [Campo('ID_EMB')]
      property ID_EMB : Integer read FID_EMB write SetID_EMB;

      [Campo('ENT_GRAMA')]
      property ENT_GRAMA : Double read FENT_GRAMA write SetENT_GRAMA;

      [Campo('ENT_QUILO')]
      property ENT_QUILO : Double read FENT_QUILO write SetENT_QUILO;

      [Campo('PESO_G')]
      property PESO_G : Double read FPESO_G write SetPESO_G;

      [Campo('PESO_KG')]
      property PESO_KG  : Double read FPESO_KG write SetPESO_KG;

      [Campo('ESPECIFICACAO')]
      property ESPECIFICACAO : string read FESPECIFICACAO write SetESPECIFICACAO;

      [Campo('PCANTUNIDADE')]
      property PCANTUNIDADE : Double read FPCANTUNIDADE write SetPCANTUNIDADE;

      [Campo('PCATUUNIDADE')]
      property PCATUUNIDADE : Double read FPCATUUNIDADE write SetPCATUUNIDADE;

      [Campo('P_PRO')]
      property P_PRO : Double read FP_PRO write SetP_PRO;

      [Campo('PROMOCAO')]
      property PROMOCAO : string read FPROMOCAO write SetPROMOCAO;

      [Campo('L_MIN')]
      property L_MIN : Double read FL_MIN write SetL_MIN;

      [Campo('L_MAX')]
      property L_MAX : Double read FL_MAX write SetL_MAX;

      [Campo('L_MED')]
      property L_MED : Double read FL_MED write SetL_MED;

      [Campo('L_EFE')]
      property L_EFE : Double read FL_EFE write SetL_EFE;

      [Campo('EST_MIN')]
      property EST_MIN : Double read FEST_MIN write SetEST_MIN;

      [Campo('EST_MAX')]
      property EST_MAX : Double read FEST_MAX write SetEST_MAX;

      [Campo('EST_ATU')]
      property EST_ATU : Double read FEST_ATU write SetEST_ATU;

      [Campo('LOC')]
      property LOC : string read FLOC write SetLOC;

      [Campo('ICMS')]
      property ICMS : Double read FICMS write SetICMS;

//      [Campo('RESENHA')]
//      property RESENHA : TBlobField read FRESENHA write SetRESENHA
//
//      [Campo('CAPA')]
//      property CAPA : TBlobField read FCAPA write SetCAPA;

      [Campo('SITTRIBUTARIA')]
      property SITTRIBUTARIA : Double read FSITTRIBUTARIA write SetSITTRIBUTARIA;

      [Campo('DESCONTOCOMPRA')]
      property DESCONTOCOMPRA : Double read FDESCONTOCOMPRA write SetDESCONTOCOMPRA;

      [Campo('INICIAL')]
      property INICIAL : string read FINICIAL write SetINICIAL;

      [Campo('ID_CAP')]
      property ID_CAP : Integer read FID_CAP write SetID_CAP;

      [Campo('ID_CATEG')]
      property ID_CATEG : Integer read FID_CATEG write SetID_CATEG;

      [Campo('ID_UNI')]
      property ID_UNI : Integer read FID_UNI write SetID_UNI;

      [Campo('CODPROD')]
      property CODPROD : string read FCODPROD write SetCODPROD;

      [Campo('CODCAT')]
      property CODCAT : string read FCODCAT write SetCODCAT;

      [Campo('CODSUBCAT')]
      property CODSUBCAT : string read FCODSUBCAT write SetCODSUBCAT;

      [Campo('PRECI')]
      property PRECI : string read FPRECI write SetPRECI;

      [Campo('CONTROL')]
      property CONTROL : string read FCONTROL write SetCONTROL;

      [Campo('SUBUNIDADE')]
      property SUBUNIDADE : string read FSUBUNIDADE write SetSUBUNIDADE;

      [Campo('QTESUBUNIDADE')]
      property QTESUBUNIDADE : Double read FQTESUBUNIDADE write SetQTESUBUNIDADE;

      [Campo('EST_ANT')]
      property EST_ANT : Double read FEST_ANT write SetEST_ANT;

      [Campo('PCMEDUNIDADE')]
      property PCMEDUNIDADE : Double read FPCMEDUNIDADE write SetPCMEDUNIDADE;

      [Campo('QTPRODVEND')]
      property QTPRODVEND : Double read FQTPRODVEND write SetQTPRODVEND;

      [Campo('TXPERCENTLUCRO')]
      property TXPERCENTLUCRO : Double read FTXPERCENTLUCRO write SetTXPERCENTLUCRO;

      [Campo('TXPERCENTLUCROSUB')]
      property  TXPERCENTLUCROSUB : Double read FTXPERCENTLUCROSUB write SetTXPERCENTLUCROSUB;

  end;

implementation

{ TESTOQUE }

constructor TESTOQUE.Create;
begin

end;

destructor TESTOQUE.Destroy;
begin

  inherited;
end;

procedure TESTOQUE.SetCODEAN13(const Value: string);
begin
  FCODEAN13 := Value;
end;

procedure TESTOQUE.SetSTATUS(const Value: string);
begin
  FSTATUS := Value;
end;

procedure TESTOQUE.SetMARCA(const Value: string);
begin
  FMARCA := Value;
end;

procedure TESTOQUE.SetDATA_INC(const Value: TDateTime);
begin
  FDATA_INC := Value;
end;

procedure TESTOQUE.SetDATA_ALT(const Value: TDateTime);
begin
  FDATA_ALT := Value;
end;

procedure TESTOQUE.SetDATA_HAB(const Value: TDateTime);
begin
   FDATA_HAB := Value;
end;

procedure TESTOQUE.SetID_SUBCATEG(const Value: integer);
begin
  FID_SUBCATEG := Value;
end;

procedure TESTOQUE.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TESTOQUE.SetID_MARCA(const Value: INTEGER);
begin
  FID_MARCA := Value;
end;

procedure TESTOQUE.SetID_EMB(const Value: INTEGER);
begin
  FID_EMB := Value;
end;

procedure TESTOQUE.SetENT_GRAMA(const Value: Double);
begin
  FENT_GRAMA := Value;
end;

procedure TESTOQUE.SetENT_QUILO(const Value: Double);
begin
  FENT_QUILO := Value;
end;

procedure TESTOQUE.SetPESO_G(const Value: Double);
begin
  FPESO_G := Value;
end;

procedure TESTOQUE.SetPESO_KG(const Value: Double);
begin
  FPESO_KG := Value;
end;

procedure TESTOQUE.SetESPECIFICACAO(const Value: string);
begin
  FESPECIFICACAO := Value;
end;

procedure TESTOQUE.SetPCANTUNIDADE(const Value: Double);
begin
  FPCANTUNIDADE := Value;
end;

procedure TESTOQUE.SetPCATUUNIDADE(const Value: Double);
begin
   FPCATUUNIDADE := Value;
end;

procedure TESTOQUE.SetP_PRO(const Value: Double);
begin
  FP_PRO := Value;
end;

procedure TESTOQUE.SetPROMOCAO(const Value: string);
begin
   FPROMOCAO := Value;
end;

procedure TESTOQUE.SetL_MIN(const Value: Double);
begin
  FL_MIN := Value;
end;

procedure TESTOQUE.SetL_MAX(const Value: Double);
begin
  FL_MAX := Value;
end;

procedure TESTOQUE.SetL_MED(const Value: Double);
begin
  FL_MED := Value;
end;

procedure TESTOQUE.SetL_EFE(const Value: Double);
begin
  FL_EFE := Value;
end;

procedure TESTOQUE.SetEST_MIN(const Value: Double);
begin
  FEST_MIN := Value;
end;

procedure TESTOQUE.SetEST_MAX(const Value: Double);
begin
  FEST_MAX := Value;
end;

procedure TESTOQUE.SetEST_ATU(const Value: Double);
begin
  FEST_ATU := Value;
end;

procedure TESTOQUE.SetLOC(const Value: STRING);
begin
  FLOC := Value;
end;

procedure TESTOQUE.SetICMS(const Value: Double);
begin
  FICMS := Value;
end;

//procedure TESTOQUE.SetRESENHA(const Value: TBlobField);
//begin
//  FRESENHA := Value;
//end;
//
//procedure TESTOQUE.SetCAPA(const Value: TBlobField);
//begin
//  FCAPA := Value;
//end;

procedure TESTOQUE.SetSITTRIBUTARIA(const Value: Double);
begin
  FSITTRIBUTARIA := Value;
end;

procedure TESTOQUE.SetDESCONTOCOMPRA(const Value: Double);
begin
  FDESCONTOCOMPRA := Value;
end;

procedure TESTOQUE.SetINICIAL(const Value: STRING);
begin
  FINICIAL := Value;
end;

procedure TESTOQUE.SetID_CAP(const Value: INTEGER);
begin
  FID_CAP := Value;
end;

procedure TESTOQUE.SetID_CATEG(const Value: INTEGER);
begin
  FID_CATEG := Value;
end;

procedure TESTOQUE.SetID_UNI(const Value: INTEGER);
begin
  FID_UNI := Value;
end;

procedure TESTOQUE.SetCODPROD(const Value: STRING);
begin
  FCODPROD := Value;
end;

procedure TESTOQUE.SetCODCAT(const Value: STRING);
begin
  FCODCAT := Value;
end;

procedure TESTOQUE.SetCODSUBCAT(const Value: STRING);
begin
  FCODSUBCAT := Value;
end;

procedure TESTOQUE.SetPRECI(const Value: STRING);
begin
  FPRECI := Value;
end;

procedure TESTOQUE.SetCONTROL(const Value: STRING);
begin
  FCONTROL := Value;
end;

procedure TESTOQUE.SetSUBUNIDADE(const Value: STRING);
begin
  FSUBUNIDADE := Value;
end;

procedure TESTOQUE.SetQTESUBUNIDADE(const Value: Double);
begin
  FQTESUBUNIDADE := Value;
end;

procedure TESTOQUE.SetEST_ANT(const Value: Double);
begin
  FEST_ANT := Value;
end;

procedure TESTOQUE.SetPCMEDUNIDADE(const Value: Double);
begin
  FPCMEDUNIDADE := Value;
end;

procedure TESTOQUE.SetQTPRODVEND(const Value: Double);
begin
  FQTPRODVEND := Value;
end;

procedure TESTOQUE.SetTXPERCENTLUCRO(const Value: Double);
begin
  FTXPERCENTLUCRO := Value;
end;

procedure TESTOQUE.SetTXPERCENTLUCROSUB(const Value: Double);
begin
  FTXPERCENTLUCROSUB := Value;
end;


end.
