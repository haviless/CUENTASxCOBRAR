Unit CXC216;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, Buttons, Mask, wwdbedit, wwdblook, wwdbdatetimepicker,
   Grids, Wwdbigrd, Wwdbgrid, Wwdbdlg, db, DBClient, wwclient, ppProd,
   ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, oaVariables,
   ppPrnabl, ppBands, ppVar, ppStrtch, ppSubRpt, ppViewr, ppModule, daDatMod,
   ComCtrls, ppEndUsr, wwdatsrc, ppCache, Menus, Wwkeycb, ppMemo, Variants, ppTypes;

Type
   TFEstCxCli = Class(TForm)
      pnlFOOT: TPanel;
      Z2bbtnCancel: TBitBtn;
      bbtnPrint: TBitBtn;
      pnlHEAD: TPanel;
      ppDBPipelineF: TppDBPipeline;
      ppDBPipelineL: TppDBPipeline;
      ppDBPipelineN: TppDBPipeline;
      BitBtn1: TBitBtn;
      ppdbp1: TppDBPipeline;
      ppdbp2: TppDBPipeline;
      ppReport2: TppReport;
      PageControl1: TPageControl;
      TabSheet1: TTabSheet;
      Panel1: TPanel;
      dbgEst2: TwwDBGrid;
      TabSheet2: TTabSheet;
      Panel3: TPanel;
      dbgEst4: TwwDBGrid;
      TabSheet3: TTabSheet;
      Panel4: TPanel;
      dbgEst5: TwwDBGrid;
      ppDBPipelineC: TppDBPipeline;
      ppDBPipelineA: TppDBPipeline;
      ppDesigner1: TppDesigner;
      TabSheet4: TTabSheet;
      Panel5: TPanel;
      dbgEst6: TwwDBGrid;
      pprCtaCte: TppReport;
      ppdbCtaCte: TppDBPipeline;
      ppDBPipelineDF: TppDBPipeline;
      ppDBPipelineDL: TppDBPipeline;
      ppDBPipelineDC: TppDBPipeline;
      ppDBPipelineDA: TppDBPipeline;
      pnlLetras: TPanel;
      dbgHist: TwwDBGrid;
      TabSheet5: TTabSheet;
      Panel2: TPanel;
      dbgEst3: TwwDBGrid;
      TabSheet6: TTabSheet;
      Panel6: TPanel;
      dbgTodos: TwwDBGrid;
      ppRepAnos: TppReport;
      dbplRepAnos: TppDBPipeline;
      Z2bbtnRepAnos: TBitBtn;
      PageControl2: TPageControl;
      TabSheet8: TTabSheet;
      TabSheet10: TTabSheet;
      lblTipCam: TLabel;
      dbeTCAMB: TwwDBEdit;
      Label11: TLabel;
      dbeCLIE: TwwDBEdit;
      Label8: TLabel;
      Label9: TLabel;
      gbPER: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      dtpINI: TwwDBDateTimePicker;
      dtpFIN: TwwDBDateTimePicker;
      Label6: TLabel;
      Label7: TLabel;
      Label10: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      dbeDirec: TwwDBEdit;
      dbeDistrito: TwwDBEdit;
      dbeTelf: TwwDBEdit;
      dbeZonaVta: TwwDBEdit;
      dbeSectorVta: TwwDBEdit;
      dbeSaldoAnt: TwwDBEdit;
      dbeCargos: TwwDBEdit;
      dbeAbonos: TwwDBEdit;
      dbeSaldoAct: TwwDBEdit;
      Label15: TLabel;
      Label16: TLabel;
      dbeLCredito: TwwDBEdit;
      dbeDisponible: TwwDBEdit;
      dblcClie: TwwDBEdit;
      Label17: TLabel;
      Label18: TLabel;
      Label19: TLabel;
      Label20: TLabel;
      wwDBEdit1: TwwDBEdit;
      Label21: TLabel;
      wwDBEdit2: TwwDBEdit;
      Label22: TLabel;
      wwDBEdit3: TwwDBEdit;
      Label23: TLabel;
      Label24: TLabel;
      wwDBEdit4: TwwDBEdit;
      rgEST: TRadioGroup;
      Label4: TLabel;
      TabSheet7: TTabSheet;
      Panel7: TPanel;
      dbgEst7: TwwDBGrid;
      Z2bbtnOtros: TBitBtn;
      pnlClientes: TPanel;
      StaticText2: TStaticText;
      bbtnCierra1: TBitBtn;
      dbgClientes: TwwDBGrid;
      ppmLetra: TPopupMenu;
      Histrico1: TMenuItem;
      CanLetra: TMenuItem;
      ppmDocu: TPopupMenu;
      CanDocu: TMenuItem;
      ppmChDev: TPopupMenu;
      CanChDev: TMenuItem;
      ppmAntic: TPopupMenu;
      CanAnti: TMenuItem;
      ppmNCre: TPopupMenu;
      CanNCre: TMenuItem;
      pnlBusca1: TPanel;
      isBusca1: TwwIncrementalSearch;
      Edit1: TEdit;
      Z2bbtnAceptar: TBitBtn;
      chbFecha: TCheckBox;
      bbtnImprimeAmortiza: TBitBtn;
      ppdbAmortiza: TppDBPipeline;
      pprAmortiza: TppReport;
      pnlDetFPagoLiq: TPanel;
      dbgDetPagoLiq: TwwDBGrid;
      dbgDetPagoLiqIButton: TwwIButton;
      StaticText1: TStaticText;
      bbtnCierraDetFPagoLiq: TBitBtn;
      SpeedButton1: TSpeedButton;
      pnlHist: TStaticText;
      bbtnCierraHist: TBitBtn;
      ppHeaderBand1: TppHeaderBand;
      pplblCiaInc: TppLabel;
      pplblTelefonoInc: TppLabel;
      ppSystemVariable9: TppSystemVariable;
      ppSystemVariable10: TppSystemVariable;
      ppSystemVariable11: TppSystemVariable;
      ppLabel188: TppLabel;
      pplblFechaINC: TppLabel;
      ppLabel190: TppLabel;
      pplblClienteINC: TppLabel;
      pplblrucinc: TppLabel;
      pplbldirinc: TppLabel;
      pplblDistritoinc: TppLabel;
      pplblVendedorinc: TppLabel;
      pplblZonainc: TppLabel;
      pplblCodigoinc: TppLabel;
      ppLabel198: TppLabel;
      ppLabel199: TppLabel;
      ppLabel200: TppLabel;
      ppLabel201: TppLabel;
      ppLabel202: TppLabel;
      ppLabel203: TppLabel;
      ppLabel204: TppLabel;
      ppLabel205: TppLabel;
      ppLabel206: TppLabel;
      ppLabel207: TppLabel;
      ppLabel208: TppLabel;
      ppLabel209: TppLabel;
      ppLabel210: TppLabel;
      ppLabel211: TppLabel;
      ppLabel212: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBCalc1: TppDBCalc;
      ppDBText5: TppDBText;
      ppDBText11: TppDBText;
      ppDBText62: TppDBText;
      ppDBText63: TppDBText;
      ppDBText100: TppDBText;
      ppDBText101: TppDBText;
      ppDBText102: TppDBText;
      ppDBText103: TppDBText;
      ppDBText104: TppDBText;
      ppDBText105: TppDBText;
      ppSummaryBand10: TppSummaryBand;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppLabel213: TppLabel;
      ppDBCalc6: TppDBCalc;
      ppLabel214: TppLabel;
      ppMemo1: TppMemo;
      dbeComment: TwwDBEdit;
      Label5: TLabel;
      DocumentosOrigen1: TMenuItem;
      lblDocumento: TLabel;
      ppdbPipelineAdendo: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      pplTitulo: TppLabel;
      pplPeriodo: TppLabel;
      pplCia: TppLabel;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      pplblTSalMN: TppLabel;
      pplblTSalME: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppLabel59: TppLabel;
      pplSalME: TppLabel;
      pplSalMN: TppLabel;
      pplCod: TppLabel;
      pplCli: TppLabel;
      pplDir: TppLabel;
      pplLin: TppLabel;
      ppLabel61: TppLabel;
      pplZon: TppLabel;
      ppLabel69: TppLabel;
      pplTel: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      pplActMN: TppLabel;
      pplMovME: TppLabel;
      pplMovMN: TppLabel;
      pplActME: TppLabel;
      ppLabel162: TppLabel;
      pplRUC: TppLabel;
      ppLabel108: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppsrFacturas: TppSubReport;
      ppcFactura: TppChildReport;
      ppTitleBand6: TppTitleBand;
      ppLabel62: TppLabel;
      ppLabel65: TppLabel;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLabel75: TppLabel;
      ppLabel78: TppLabel;
      ppLabel79: TppLabel;
      ppLabel80: TppLabel;
      ppLabel81: TppLabel;
      ppLabel82: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      ppLabel85: TppLabel;
      ppLabel109: TppLabel;
      ppLabel58: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel73: TppLabel;
      ppLabel72: TppLabel;
      ppLabel16: TppLabel;
      ppLabel77: TppLabel;
      ppDetailBand3: TppDetailBand;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText22: TppDBText;
      ppDBText23: TppDBText;
      ppDBText24: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppsrDFacturas: TppSubReport;
      ppdFactura: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppDetailBand6: TppDetailBand;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText34: TppDBText;
      ppDBText49: TppDBText;
      ppDBText51: TppDBText;
      ppSummaryBand6: TppSummaryBand;
      ppDBText3: TppDBText;
      ppDBText52: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppdbcCLF: TppDBCalc;
      ppdbcPLF: TppDBCalc;
      ppdbcCEF: TppDBCalc;
      ppdbcPEF: TppDBCalc;
      ppLabel6: TppLabel;
      ppdbcSLF: TppDBCalc;
      ppdbcSEF: TppDBCalc;
      ppLabel8: TppLabel;
      ppsrLetras: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand5: TppTitleBand;
      ppLabel88: TppLabel;
      ppLabel91: TppLabel;
      ppLabel93: TppLabel;
      ppLabel95: TppLabel;
      ppLabel96: TppLabel;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppLabel110: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel15: TppLabel;
      ppLabel90: TppLabel;
      ppLabel89: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppLabel66: TppLabel;
      ppLabel74: TppLabel;
      ppLabel86: TppLabel;
      ppDetailBand7: TppDetailBand;
      ppDBText33: TppDBText;
      ppDBText37: TppDBText;
      ppDBText39: TppDBText;
      ppDBText40: TppDBText;
      ppDBText41: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText36: TppDBText;
      ppDBText38: TppDBText;
      ppSubReport1: TppSubReport;
      ppChildReport4: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppDetailBand8: TppDetailBand;
      ppDBText42: TppDBText;
      ppDBText43: TppDBText;
      ppDBText44: TppDBText;
      ppDBText45: TppDBText;
      ppDBText46: TppDBText;
      ppDBText47: TppDBText;
      ppDBText48: TppDBText;
      ppDBText35: TppDBText;
      ppSummaryBand7: TppSummaryBand;
      ppDBText50: TppDBText;
      ppDBText53: TppDBText;
      ppDBText54: TppDBText;
      ppDBText1: TppDBText;
      ppDBText4: TppDBText;
      ppSummaryBand4: TppSummaryBand;
      ppdbcSEL: TppDBCalc;
      ppdbcSLL: TppDBCalc;
      ppLabel5: TppLabel;
      ppLabel13: TppLabel;
      ppdbcPEL: TppDBCalc;
      ppdbcCEL: TppDBCalc;
      ppdbcPLL: TppDBCalc;
      ppdbcCLL: TppDBCalc;
      ppsrCheques: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand3: TppTitleBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel52: TppLabel;
      ppLabel19: TppLabel;
      ppLabel104: TppLabel;
      ppLabel105: TppLabel;
      ppLabel106: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText55: TppDBText;
      ppDBText56: TppDBText;
      ppDBText58: TppDBText;
      ppDBText57: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLabel23: TppLabel;
      ppdbcSEC: TppDBCalc;
      ppdbcsLC: TppDBCalc;
      ppLabel27: TppLabel;
      ppdbcPEC: TppDBCalc;
      ppdbcCEC: TppDBCalc;
      ppdbcCLC: TppDBCalc;
      ppdbcPLC: TppDBCalc;
      ppsrAnticipo: TppSubReport;
      ppChildReport3: TppChildReport;
      ppTitleBand7: TppTitleBand;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppLabel36: TppLabel;
      ppLabel44: TppLabel;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLabel117: TppLabel;
      ppLabel118: TppLabel;
      ppLabel119: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText16: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText17: TppDBText;
      ppDBText59: TppDBText;
      ppDBText60: TppDBText;
      ppDBText61: TppDBText;
      ppSummaryBand5: TppSummaryBand;
      ppLabel120: TppLabel;
      ppdbcSEA: TppDBCalc;
      ppdbcSLA: TppDBCalc;
      ppLabel121: TppLabel;
      ppdbcPEA: TppDBCalc;
      ppdbcCEA: TppDBCalc;
      ppdbcCLA: TppDBCalc;
      ppdbcPLA: TppDBCalc;
      ppSubReport2: TppSubReport;
      ppChildReport5: TppChildReport;
      ppTitleBand4: TppTitleBand;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      ppLabel127: TppLabel;
      ppLabel128: TppLabel;
      ppLabel129: TppLabel;
      ppLabel130: TppLabel;
      ppLabel131: TppLabel;
      ppLabel132: TppLabel;
      ppLabel133: TppLabel;
      ppLabel134: TppLabel;
      ppLabel135: TppLabel;
      ppLabel136: TppLabel;
      ppLabel137: TppLabel;
      ppLabel138: TppLabel;
      ppLabel139: TppLabel;
      ppLabel140: TppLabel;
      ppLabel141: TppLabel;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      ppLabel144: TppLabel;
      ppLabel145: TppLabel;
      ppLabel146: TppLabel;
      ppLabel147: TppLabel;
      ppLabel7: TppLabel;
      ppDetailBand9: TppDetailBand;
      ppDBText64: TppDBText;
      ppDBText65: TppDBText;
      ppDBText66: TppDBText;
      ppDBText67: TppDBText;
      ppDBText68: TppDBText;
      ppDBText69: TppDBText;
      ppDBText70: TppDBText;
      ppDBText71: TppDBText;
      ppDBText72: TppDBText;
      ppDBText73: TppDBText;
      ppDBText74: TppDBText;
      ppSummaryBand8: TppSummaryBand;
      ppLabel148: TppLabel;
      ppdbcCLN: TppDBCalc;
      ppdbcPLN: TppDBCalc;
      ppdbcCEN: TppDBCalc;
      ppdbcPEN: TppDBCalc;
      ppLabel149: TppLabel;
      ppdbcSLN: TppDBCalc;
      ppdbcSEN: TppDBCalc;
      ppSubReport3: TppSubReport;
      ppChildReport6: TppChildReport;
      ppTitleBand8: TppTitleBand;
      ppLabel107: TppLabel;
      ppLabel187: TppLabel;
      ppLabel189: TppLabel;
      ppLabel191: TppLabel;
      ppLabel192: TppLabel;
      ppLabel193: TppLabel;
      ppLabel194: TppLabel;
      ppLabel195: TppLabel;
      ppLabel196: TppLabel;
      ppLabel197: TppLabel;
      ppLabel215: TppLabel;
      ppLabel216: TppLabel;
      ppLabel217: TppLabel;
      ppLabel218: TppLabel;
      ppLabel219: TppLabel;
      ppLabel220: TppLabel;
      ppLabel221: TppLabel;
      ppLabel222: TppLabel;
      ppLabel223: TppLabel;
      ppLabel224: TppLabel;
      ppLabel225: TppLabel;
      ppLabel226: TppLabel;
      ppLabel227: TppLabel;
      ppDetailBand12: TppDetailBand;
      ppDBText106: TppDBText;
      ppDBText107: TppDBText;
      ppDBText108: TppDBText;
      ppDBText109: TppDBText;
      ppDBText110: TppDBText;
      ppDBText111: TppDBText;
      ppDBText112: TppDBText;
      ppDBText113: TppDBText;
      ppDBText114: TppDBText;
      ppDBText115: TppDBText;
      ppDBText116: TppDBText;
      ppDBText117: TppDBText;
      ppDBText118: TppDBText;
      ppDBText119: TppDBText;
      ppSummaryBand11: TppSummaryBand;
      ppLabel228: TppLabel;
      ppDBCalc8: TppDBCalc;
      ppDBCalc9: TppDBCalc;
      ppSummaryBand2: TppSummaryBand;
      ppLabel76: TppLabel;
      ppLabel87: TppLabel;
      ppLabel92: TppLabel;
      ppLabel94: TppLabel;
      ppLabel97: TppLabel;
      ppLabel98: TppLabel;
      ppvCLF: TppVariable;
      ppvPLF: TppVariable;
      ppvSLF: TppVariable;
      ppvCLL: TppVariable;
      ppvPLL: TppVariable;
      ppvSLL: TppVariable;
      ppvCLC: TppVariable;
      ppvPLC: TppVariable;
      ppvSLC: TppVariable;
      ppLabel103: TppLabel;
      ppvCLT: TppVariable;
      ppvPLT: TppVariable;
      ppvSLT: TppVariable;
      ppvCEF: TppVariable;
      ppvPEF: TppVariable;
      ppvSEF: TppVariable;
      ppvCEL: TppVariable;
      ppvPEL: TppVariable;
      ppvSEL: TppVariable;
      ppvCEC: TppVariable;
      ppvPEC: TppVariable;
      ppvSEC: TppVariable;
      ppvCET: TppVariable;
      ppvPET: TppVariable;
      ppvSET: TppVariable;
      ppLabel60: TppLabel;
      ppLabel101: TppLabel;
      ppLabel102: TppLabel;
      ppLabel111: TppLabel;
      ppLabel112: TppLabel;
      ppLabel113: TppLabel;
      ppLabel114: TppLabel;
      ppvLin: TppVariable;
      ppvDis: TppVariable;
      ppLabel122: TppLabel;
      ppvCLA: TppVariable;
      ppvPLA: TppVariable;
      ppvSLA: TppVariable;
      ppvCEA: TppVariable;
      ppvPEA: TppVariable;
      ppvSEA: TppVariable;
      ppLabel123: TppLabel;
      ppvCLN: TppVariable;
      ppvPLN: TppVariable;
      ppvSLN: TppVariable;
      ppvCEN: TppVariable;
      ppvPEN: TppVariable;
      ppvSEN: TppVariable;
      ppLabel14: TppLabel;
      ppHeaderBand4: TppHeaderBand;
      ppLabel163: TppLabel;
      pplblCiaAmortiza: TppLabel;
      ppLabel165: TppLabel;
      ppLabel166: TppLabel;
      ppLabel167: TppLabel;
      ppLabel168: TppLabel;
      ppLabel169: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable8: TppSystemVariable;
      ppLabel170: TppLabel;
      pplblCliente: TppLabel;
      ppLabel171: TppLabel;
      pplblTDoc: TppLabel;
      ppLabel172: TppLabel;
      pplblSerie: TppLabel;
      ppLabel173: TppLabel;
      pplblNoDoc: TppLabel;
      ppLabel174: TppLabel;
      pplblMoneda: TppLabel;
      ppLabel175: TppLabel;
      pplblImporte: TppLabel;
      ppLabel176: TppLabel;
      pplblSaldo: TppLabel;
      pplblCodigo: TppLabel;
      ppLabel177: TppLabel;
      ppLabel178: TppLabel;
      ppLabel179: TppLabel;
      ppLabel180: TppLabel;
      ppLabel181: TppLabel;
      ppLabel182: TppLabel;
      ppLabel183: TppLabel;
      ppLabel184: TppLabel;
      ppLabel185: TppLabel;
      ppDetailBand11: TppDetailBand;
      ppDBText91: TppDBText;
      ppDBText92: TppDBText;
      ppDBText93: TppDBText;
      ppDBText94: TppDBText;
      ppDBText95: TppDBText;
      ppDBText96: TppDBText;
      ppDBText97: TppDBText;
      ppDBText98: TppDBText;
      ppDBText99: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand9: TppSummaryBand;
      ppDBCalc2: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppLabel186: TppLabel;
      ppHeaderBand3: TppHeaderBand;
      ppLabel150: TppLabel;
      ppLabel151: TppLabel;
      ppLabel152: TppLabel;
      ppLabel153: TppLabel;
      ppLabel154: TppLabel;
      ppLabel155: TppLabel;
      ppLabel156: TppLabel;
      ppLabel157: TppLabel;
      ppLabel158: TppLabel;
      pplblCiaAnos: TppLabel;
      pplRATitulo: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppLabel160: TppLabel;
      ppLine1: TppLine;
      ppLabel161: TppLabel;
      ppDetailBand10: TppDetailBand;
      ppDBText75: TppDBText;
      ppDBText76: TppDBText;
      ppDBText77: TppDBText;
      ppDBText78: TppDBText;
      ppDBText79: TppDBText;
      ppDBText80: TppDBText;
      ppDBText81: TppDBText;
      ppDBText82: TppDBText;
      ppDBText83: TppDBText;
      ppDBText84: TppDBText;
      ppDBText85: TppDBText;
      ppDBText86: TppDBText;
      ppDBText87: TppDBText;
      ppDBText88: TppDBText;
      ppDBText89: TppDBText;
      ppDBText90: TppDBText;
      ppFooterBand2: TppFooterBand;
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure FormShow(Sender: TObject);
      Procedure dbgEst2CalCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure dtpFINExit(Sender: TObject);
      Procedure bbtnPrintClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure dbgEst2TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure dbgEst3TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure dbgEst2CalcTitleAttributes(Sender: TObject;
         AFieldName: String; AFont: TFont; ABrush: TBrush;
         Var ATitleAlignment: TAlignment);
      Procedure dbgEst3CalcTitleAttributes(Sender: TObject;
         AFieldName: String; AFont: TFont; ABrush: TBrush;
         Var ATitleAlignment: TAlignment);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeTCAMBKeyPress(Sender: TObject; Var Key: Char);
      Procedure ppHeaderBand2BeforePrint2(Sender: TObject);
      Procedure ppReport2PreviewFormCreate(Sender: TObject);
      Procedure dbgEst3CalcCellColors(Sender: TObject; Field: TField;
         State: TGridDrawState; Highlight: Boolean; AFont: TFont;
         ABrush: TBrush);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure chbFechaClick(Sender: TObject);
      Procedure ppSummaryBand2BeforePrint(Sender: TObject);
      Procedure SpeedButton1Click(Sender: TObject);
      Procedure Z2bbtnRepAnosClick(Sender: TObject);
      Procedure ppRepAnosPreviewFormCreate(Sender: TObject);
      Procedure Z2bbtnOtrosClick(Sender: TObject);
      Procedure bbtnCierra1Click(Sender: TObject);
      Procedure Histrico1Click(Sender: TObject);
      Procedure CanLetraClick(Sender: TObject);
      Procedure dbgHistDblClick(Sender: TObject);
      Procedure CanDocuClick(Sender: TObject);
      Procedure CanChDevClick(Sender: TObject);
      Procedure CanAntiClick(Sender: TObject);
      Procedure CanNCreClick(Sender: TObject);
      Procedure dbgTodosTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure isBusca1Exit(Sender: TObject);
      Procedure dbgEst4TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure dbgEst7TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure dbgEst5TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure dbgEst6TitleButtonClick(Sender: TObject; AFieldName: String);
      Procedure dbeTelfMouseMove(Sender: TObject; Shift: TShiftState; X,
         Y: Integer);
      Procedure bbtnImprimeAmortizaClick(Sender: TObject);
      Procedure bbtnCierraDetFPagoLiqClick(Sender: TObject);
      Procedure bbtnCierraHistClick(Sender: TObject);
      Procedure DocumentosOrigen1Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);

   Private
    { Private declarations }
      sSQL, sSQLLetras, sSQLDocs, sSQLTodos, sSQL2, stcam: String;
      FMoneda, FCIAID, FCliente, FClienteDes, FClAux, FNomCliente, FCIA: String;
      FActivar, FMonLoc, FInternal: Boolean;
      orig, camp, extr, loca, pag, sal, FSaldoIni, FSaldoIniE,
         FSaldoIniL, col1, col2, col3, col4, FSaldoReal,
         FSaldoRealE, FSaldoRealL: Double;
      FAnio, FMes: Integer;
      rLineaCrdito: real;
      xPopup: String;
      sDoc, sDocAbr, sSerie, sNodoc, sMon: String;
      fImp, FSal: double;
      Procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
      Procedure ProcessSaldo(cds: TwwClientDataSet);
      Procedure PSaldoAnt;
      Function MonLocal(Const CodMoneda: String): Boolean;
      Function NomMoneda(Const CodMoneda: String): String;
      Procedure cGRID(dbg: TwwDBGrid);
      Procedure cLetras;
      Procedure Totales;
      Procedure CalculaTotales;
      Procedure InsertaRayas;
      Procedure CargaDetalle(xDocumentos: String);
      Procedure CagaBusca(xDataSource: TwwDataSource);
      Procedure InsertaGrupo;
      Procedure CargaDataSource;
   Public
    { Public declarations }
      rLineaCredito: real;
      sCia: String;
      cdsLinea: TwwClientDataSet;
      Procedure AceptarCompleto;
      Procedure AceptarParcial;
      Procedure Historico;
      Procedure cSQL;
      Procedure cSQLTodos;
      Procedure cSQLDocs;
      Procedure cSQLLetras;
      Procedure cFormat(cds: TwwClientDataSet);
      Procedure cFooter(dbg: TwwDBGrid; cds: TwwClientDataSet);
      Procedure cFooterCheque(dbg: TwwDBGrid; cds: TwwClientDataSet);
      Procedure cFooterAnticipo(dbg: TwwDBGrid; cds: TwwClientDataSet);
      Procedure cFooterNCredito(dbg: TwwDBGrid; cds: TwwClientDataSet);
      Procedure cFooterTodos(dbg: TwwDBGrid; cds: TwwClientDataSet);
      Property Moneda: String Read FMoneda Write FMoneda;
      Property ClAux: String Read FClAux Write FClAux;
      Property Cliente: String Read FCliente Write FCliente;
      Property ClienteDes: String Read FClienteDes Write FClienteDes;
      Property CIAID: String Read FCIAID Write FCIAID;
      Property Internal: Boolean Read FInternal Write FInternal;
      Property Activar: Boolean Read FActivar Write FActivar;
      Property MonLoc: Boolean Read FMonLoc Write FMonLoc;
      Property SaldoIni: Double Read FSaldoIni Write FSaldoIni;
      Property SaldoIniL: Double Read FSaldoIniL Write FSaldoIniL;
      Property SaldoIniE: Double Read FSaldoIniE Write FSaldoIniE;
      Property SaldoReal: Double Read FSaldoReal Write FSaldoReal;
      Property SaldoRealL: Double Read FSaldoRealL Write FSaldoRealL;
      Property SaldoRealE: Double Read FSaldoRealE Write FSaldoRealE;
      Property Mes: Integer Read FMes Write FMes;
      Property Anio: Integer Read FAnio Write FAnio;
   End;

Var
   FEstCxCli: TFEstCxCli;
   xCiaDes: String;

Implementation

Uses CxCDM, CxC217, CxC215;
//uses CxCDM, CxC217, Unit2, CxC215, CxC250;

{$R *.DFM}

Function DaysOfMonth(iMonth, iYear: Word): Word;
Const
   DaysxMes: Array[1..12] Of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
Begin
   If IsLeapYear(iYear) Then
    //DaysxMes[2]:= 29
      result := 29
   Else
      result := DaysxMes[iMonth];
End;

Function OperClientDataSet(ClientDataSet: TwwClientDataSet;
   Expression, Condicion: String): Double;
Var
   cdsClone: TwwClientDataSet;
   Agg: TAggregate;
Begin
   result := 0;

   If trim(Expression) = '' Then Exit;

   cdsClone := TwwClientDataSet.Create(Nil);
   Try

      With cdsClone Do
      Begin
         CloneCursor(ClientDataSet, True);
         Agg := Nil;
         Aggregates.Clear;
         Agg := Aggregates.Add;
         Agg.AggregateName := 'OPER';
         Agg.Expression := Expression;
         Agg.Active := True;

         If Trim(Condicion) <> '' Then
         Begin
            Filtered := False;
            Filter := Condicion;
            Filtered := True;
         End;

         If Aggregates.Items[Aggregates.IndexOf('OPER')].Value <> NULL Then
            result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;

         Aggregates.Clear;

      End;

   Finally
      cdsClone.Free;
   End;
End;

Procedure TFEstCxCli.cSQL;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
   //** 24/10/2002 - pjsv
      sSQL := 'SELECT CXC.CCFCANCEL FECHA, COM.DCCOMABR,DAYS(CXC.CCFCANCEL)-DAYS(CXC.CCFVCMTO) EDAD,CXC.CCNODOC, CXC.CCNLETBCO, CXC.CCFEMIS, CXC.CCFVCMTO, CXC.CCTCAMPR, ' +
         'CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
         'CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CCSERIE, CXC.CIAID, CXC.DOCID, ' +
         'MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
         'SIT.SITUAABR SITUADES, CXC.CCMTOORI, CLI.CLIEDES , CXC.TMONID , CXC.CCESTADO , ' +
         DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0) AS COL_2,' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0) AS COL_3, ' +

      '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC ELSE 0 END) AS MTOLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT ELSE 0 END) AS MTOEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN ' + DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGLOC,0) ELSE 0 END) AS SALLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN ' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0) ELSE 0 END) AS SALEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC ELSE 0 END) AS PAGLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT ELSE 0 END) AS PAGEXT ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN TGE103 MON ON (CXC.TMONID=MON.TMONID) ' +
         ' LEFT JOIN TGE180 COM ON (CXC.CIAID=COM.CIAID AND CXC.TVTAID=COM.SCOMERID AND COM.CCOMERID=CXC.CCOMERID) ' +
         ' LEFT JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'') ' +
         ' LEFT JOIN CXC105 UBI ON (CXC.UBIID=UBI.UBICAID) ' +
         ' LEFT JOIN CXC104 SIT ON (CXC.SITID=SIT.SITUAID), ' +
         ' TGE204 CLI ';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
    //** 24/10/2002 - pjsv
         sSQL := 'SELECT CXC.CCFCANCEL FECHA, COM.DCCOMABR,' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFCANCEL,''DD'')) -' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFVCMTO,''DD'')) EDAD,CXC.CCNODOC, CXC.CCNLETBCO, CXC.CCFEMIS, CXC.CCFVCMTO, CXC.CCTCAMPR, ' +
            'CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
            'CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CCSERIE, CXC.CIAID, CXC.DOCID, ' +
            'MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
            'SIT.SITUAABR SITUADES, CXC.CCMTOORI, CLI.CLIEDES , CXC.TMONID , CXC.CCESTADO , ' +
            DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0) AS COL_2,' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0) AS COL_3, ' +

         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC END ) MTOLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT END ) MTOEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCSALLOC END ) SALLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCSALEXT END ) SALEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC END ) PAGLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT END ) PAGEXT ' +

         ' FROM CXC301 CXC,TGE103 MON,TGE110 DOC,CXC105 UBI,CXC104 SIT,TGE204 CLI,TGE180 COM ' +
            ' WHERE (CXC.TMONID=MON.TMONID(+)) ' +
            ' AND (CXC.DOCID=DOC.DOCID(+) AND DOC.DOCMOD = ''CXC'') ' +
            ' AND (CXC.UBIID=UBI.UBICAID(+)) ' +
            ' AND (CXC.SITID=SIT.SITUAID(+)) ' +
            ' AND (CXC.CIAID=COM.CIAID(+) AND CXC.TVTAID.COM.SCOMERID(+) AND COM.CCOMERID(+)=CXC.CCOMERID) ';
      End;
End;

Procedure TFEstCxCli.cSQLTodos;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQLTodos := 'SELECT CXC.CCFLAGPROT,CASE WHEN CXC.DOCID=' + QuotedStr(DMCXC.wsLet) + ' THEN CCNLETBCO ELSE '''' END CCNLETBCO, CXC.CCFCANCEL FECHA, 1 POS,' +
         'DAYS(CXC.CCFCANCEL)-DAYS(CXC.CCFVCMTO) EDAD, CXC.CCSERIE, CXC.CCNODOC, CXC.CCFEMIS, CXC.CCFVCMTO, ' +
         ' CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
         ' CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CIAID, CXC.DOCID, ' +
         ' MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
         ' SIT.SITUAABR SITUADES, CXC.CCMTOORI, CXC.TMONID , CXC.CCESTADO, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN (CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCMTOLOC) ELSE CXC.CCMTOLOC END) ELSE 0 END) AS MTOLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN (CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCMTOEXT) ELSE CCMTOEXT END) ELSE 0 END) AS MTOEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN (CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*(' + DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGLOC,0))) ELSE ' + DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGLOC,0) END) ELSE 0 END) AS SALLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN (CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*(' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0))) ELSE ' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0) END) ELSE 0 END) AS SALEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN (CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCPAGLOC) ELSE CCPAGLOC END) ELSE 0 END) AS PAGLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN (CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCPAGEXT) ELSE CCPAGEXT END) ELSE 0 END) AS PAGEXT, ' +
         '(CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCMTOEXT) ELSE CCMTOEXT END) AS MTODOLAR, ' +
         '(CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCPAGEXT) ELSE CCPAGEXT END) AS PAGDOLAR, ' +
         '(CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*(' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0))) ELSE ' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0) END) AS SALDOLAR ' +
         ' FROM CXC301 CXC ' +
         ' INNER JOIN TGE103 MON ON (CXC.TMONID=MON.TMONID) ' +
         ' INNER JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'' AND (' +
         DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''XX'' OR ' +
         DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''CH'')) ' +
         ' LEFT JOIN CXC105 UBI ON (CXC.UBIID=UBI.UBICAID) ' +
         ' LEFT JOIN CXC104 SIT ON (CXC.SITID=SIT.SITUAID) ';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         sSQLTodos := 'SELECT CXC.CCFCANCEL FECHA, 1 POS,' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFCANCEL,''DD'')) -' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFVCMTO,''DD'')) EDAD, CXC.CCSERIE, CXC.CCNODOC, CXC.CCFEMIS, CXC.CCFVCMTO, ' +
            ' CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
            ' CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CIAID, CXC.DOCID, ' +
            ' MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
            ' SIT.SITUAABR SITUADES, CXC.CCMTOORI, CXC.TMONID , CXC.CCESTADO, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC END ) MTOLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT END ) MTOEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCSALLOC END ) SALLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCSALEXT END ) SALEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC END ) PAGLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT END ) PAGEXT, ' +
            '(CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCMTOEXT) ELSE CCMTOEXT END) AS MTODOLAR, ' +
            '(CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*CXC.CCPAGEXT) ELSE CCPAGEXT END) AS PAGDOLAR, ' +
            '(CASE WHEN (CXC.DOCID=' + QuotedStr(DMCXC.wsAnt) + ' OR CXC.DOCID=' + QuotedStr(DMCXC.wsNCre) + ') THEN ((-1)*(' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0))) ELSE ' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0) END) AS SALDOLAR ' +
            ' FROM CXC301 CXC,TGE103 MON,TGE110 DOC,CXC105 UBI,CXC104 SIT,TGE180 COM ' +
            ' WHERE CXC.TMONID=MON.TMONID(+) ' +
            ' AND (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'' AND (' +
            DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''XX'' OR ' +
            DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''CH'')) ' +
            ' AND CXC.UBIID=UBI.UBICAID(+) ' +
            ' AND CXC.SITID=SIT.SITUAID(+) ' +
            ' AND (CXC.CIAID=COM.CIAID(+) AND CXC.TVTAID = COM.SCOMERID(+) AND COM.CCOMERID(+)=CXC.CCOMERID) ';
      End;
End;

Procedure TFEstCxCli.Z2bbtnAceptarClick(Sender: TObject);
Begin
   AceptarParcial;
End;

Procedure TFEstCxCli.PSaldoAnt;
Var
   xSQL, ySQL, mMes, mAno: String;
   Y, M, Mant, D, iAno: Word;
   fSaldoA: Double;
   sLet, sChe, sAnt, sNCre: String;
Begin
   sAnt := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'DOCID');
   sLet := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');
   sChe := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''H''', 'DOCID');
   sNCre := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID');
   DecodeDate(dtpINI.Date, Y, M, D);

   If M = 1 Then
   Begin
      Mant := 12;
   End
   Else
   Begin
      Mant := M - 1;
   End;

   mMes := strzero(inttostr(M - 1), 2);
   mAno := StrZero(inttostr(y), 4);

   xSQL := 'SELECT SALDSMN' + mMes + ' AS X, ' +
      ' SALDSME' + mMes + ' AS Y FROM TGE401 WHERE' +
      ' ANO = ''' + mAno + ''' ' +
      ' AND CLAUXID=' + '''' + FClAux + '''' +
      ' AND AUXID=' + '''' + FCliente + '''';

   DMCXC.cdsQry3.Close;
   DMCXC.cdsQry3.ProviderName := 'dspTGE';
   DMCXC.cdsQry3.DataRequest(xSQL); //este es la llamada remota al provider del servidor
   DMCXC.cdsQry3.Open;

   SaldoRealL := DMCXC.cdsQry3.FieldByName('X').AsFloat;
   SaldoRealE := DMCXC.cdsQry3.FieldByName('Y').AsFloat;

// si el día es mayor que 1 hay que incrementar el monto de los documentos hasta un día antes del rango deseado
   If d >= 1 Then
   Begin
      If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      Begin //FALTA PARA ORACLE
         xSQL := 'select sum( case when TMONID = ''' + DMCXC.wTMonLoc + ''' then (case when DOCID=' + QuotedStr(sAnt) + ' OR DOCID=' + QuotedStr(sNCre) + ' THEN CCSALLOC*(-1) ELSE CCSALLOC END) ELSE 0 END ) AS X, ' +
            ' SUM( CASE WHEN TMONID = ''' + DMCXC.wTMonExt + ''' THEN (CASE WHEN DOCID=' + QuotedStr(sAnt) + ' OR DOCID=' + QuotedStr(sNCre) + ' THEN CCSALEXT*(-1) ELSE CCSALEXT END) ELSE 0 END ) AS Y FROM CXC301 WHERE ' +
            ' CCFEMIS>=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, EnCodeDate(Y, M, 1)) + ''')' +
            ' AND CCFEMIS<' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpINI.Date) + ''')' +
            ' AND (CCESTADO = ''P'' OR CCESTADO =''C'') ' +
            ' AND CLAUXID=' + '''' + FClAux + '''' +
            ' AND CLIEID=' + '''' + FCliente + '''';
      End
      Else
         If DMCXC.SRV_D = 'ORACLE' Then
         Begin
            xSQL := 'SELECT SUM( CASE WHEN TMONID=''' + DMCXC.wTMonLoc + ''' THEN CCSALLOC ELSE  0 END) AS X, ' +
               ' SUM( CASE WHEN TMONID=''' + DMCXC.wTMonExt + ''' THEN CCSALEXT ELSE  0 END) AS Y FROM CXC301 WHERE' +
               ' CCFEMIS>=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, EnCodeDate(Y, M, 1)) + ''')' +
               ' AND CCFEMIS<' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpINI.Date) + ''')' +
               ' AND (CCESTADO = ''P'' OR CCESTADO =''C'') ' +
               ' AND CLAUXID=' + '''' + FClAux + '''' +
               ' AND CLIEID=' + '''' + FCliente + '''';
         End;
      DMCXC.cdsQry3.Close;
      DMCXC.cdsQry3.ProviderName := 'dspTGE';
      DMCXC.cdsQry3.DataRequest(xSQL);
      DMCXC.cdsQry3.Open;
      If DMCXC.cdsQry3.RecordCount <> 0 Then
      Begin
         SaldoRealL := SaldoRealL + DMCXC.cdsQry3.FieldByName('X').Asfloat;
         SaldoRealE := SaldoRealE + DMCXC.cdsQry3.FieldByName('Y').Asfloat;
      End;

   End;

End;

Procedure TFEstCxCli.dblcNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; Var Accept: Boolean);
Begin
   If TwwDBCustomLookupCombo(Sender).Text = '' Then Accept := True;
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
End;

Procedure TFEstCxCli.FormShow(Sender: TObject);
Var
   FDate: TDateTime;
   i: Word;
   LC: String;
Begin
   dbeSaldoAnt.datasource := DMCXC.dsQry1;
   dbeCargos.datasource := DMCXC.dsQry1;
   dbeAbonos.datasource := DMCXC.dsQry1;
   dbeSaldoAct.datasource := DMCXC.dsQry1;
   dbeDisponible.datasource := DMCXC.dsQry1;
   wwDBEdit1.datasource := DMCXC.dsQry1;
   wwDBEdit2.datasource := DMCXC.dsQry1;
   wwDBEdit3.datasource := DMCXC.dsQry1;
   wwDBEdit4.datasource := DMCXC.dsQry1;

  //** 25/10/2002 - pjsv
   PageControl1.ActivePage := TabSheet6;
  //**

   pnlLetras.visible := false;
   dbeTCAMB.Text := '0';
   stcam := '1';

   If Internal Then
   Begin
//     edtLineaCredito.text :=  DMCXC.cdsQry1.FieldByName('CLIECREMAX').AsString;
      rLineaCredito := DMCXC.cdsQry1.FieldByName('CLIECREMAX').AsFloat;
//     edtDisponible.text   :=  DMCXC.cdsQry1.FieldByName('DISPONIBLE').AsString;
//     dblcCLIE.Text     := Cliente ;
//     dbeCLIE.Text      := ClienteDes ;
   {if Activar then
    dblcCLIE.Color := clWindow
   else
        dblcCLIE.Color := clBtnFace;}

      dblcCLIE.Enabled := Activar;
   End;

//  stt3.Caption := floattostrf(SaldoIniL, ffNumber, 15, 2);
//  stt4.Caption := floattostrf(SaldoIniE, ffNumber, 15, 2);

   i := 1;
   FDate := EnCodeDate(Anio, Mes, i);
   dtpINI.Date := FDate;
   dtpFIN.Date := DMCXC.DateS;
   chbFecha.Checked := True;

//  dblcCLIE.Text        := Cliente;
//  dblcCLIE.Enabled     := Activar;
//  LC:=DisplayDescrip('TGE204','CLIECREMAX','CLIEID',Cliente);
//  if LC='' then
//    LC:='0.00';
//  edtLineaCredito.text   := FloatToStrF(StrToFloat(LC),ffNumber,15,2);

   TNumericField(DMCXC.cdsQry1.FieldByName('CLIECREMAX')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsQry1.FieldByName('DISPONIBLE')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsQry1.FieldByName('SALANTME')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsQry1.FieldByName('CARGOSME')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsQry1.FieldByName('ABONOSME')).DisplayFormat := '###,###,#0.00';
   TNumericField(DMCXC.cdsQry1.FieldByName('SALTOTALME')).DisplayFormat := '###,###,#0.00';
//   InsertaGrupo;
   Z2bbtnAceptarClick(Nil);
End;

Procedure TFEstCxCli.cFormat(cds: TwwClientDataSet);
Begin
   With cds Do
   Begin
      TNumericField(FieldByName('CCMTOORI')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('CCTCAMPR')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('MTOLOC')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('MTOEXT')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('SALLOC')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('PAGLOC')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('PAGEXT')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('SALEXT')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('CCMTOLOC')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('CCPAGLOC')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('CCSALLOC')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('CCMTOEXT')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('CCPAGEXT')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('CCSALEXT')).DisplayFormat := '### ### ###.#0';
      TNumericField(FieldByName('COL_2')).DisplayFormat := '### ### ##0.00';
      TNumericField(FieldByName('COL_3')).DisplayFormat := '### ### ##0.00';
   End;
End;

Procedure TFEstCxCli.cFooter(dbg: TwwDBGrid; cds: TwwClientDataSet);
Var
   Mloc, MExt: Double;
Begin
   Mloc := OperClientDataSet(cds, 'SUM(MTOLOC)', '');
   MExt := OperClientDataSet(cds, 'SUM(MTOEXT)', '');
   dbg.ColumnByName('MTOLOC').FooterValue := floattostrf(MLoc, ffNumber, 15, 2);
   dbg.ColumnByName('MTOEXT').FooterValue := floattostrf(MExt, ffNumber, 15, 2);

   Mloc := OperClientDataSet(cds, 'SUM(SALLOC)', '');
   MExt := OperClientDataSet(cds, 'SUM(SALEXT)', '');
   dbg.ColumnByName('SALLOC').FooterValue := floattostrf(MLoc, ffNumber, 15, 2);
   dbg.ColumnByName('SALEXT').FooterValue := floattostrf(MExt, ffNumber, 15, 2);
   loca := OperClientDataSet(cds, 'SUM(MTOLOC)', '');
   pag := OperClientDataSet(cds, 'SUM(PAGLOC)', '');
   dbg.ColumnByName('MTOLOC').FooterValue := floattostrf(loca, ffNumber, 15, 2);
   dbg.ColumnByName('PAGLOC').FooterValue := floattostrf(pag, ffNumber, 15, 2);

   extr := OperClientDataSet(cds, 'SUM(MTOEXT)', '');
   pag := OperClientDataSet(cds, 'SUM(PAGEXT)', '');
   dbg.ColumnByName('MTOEXT').FooterValue := floattostrf(extr, ffNumber, 15, 2);
   dbg.ColumnByName('PAGEXT').FooterValue := floattostrf(pag, ffNumber, 15, 2);

   col2 := OperClientDataSet(cds, 'SUM(COL_2)', '');
   col3 := OperClientDataSet(cds, 'SUM(COL_3)', '');
   dbg.ColumnByName('COL_2').FooterValue := floattostrf(col2, ffNumber, 15, 2);
   dbg.ColumnByName('COL_3').FooterValue := floattostrf(col3, ffNumber, 15, 2);
   dbg.FooterCellColor := clInfoBk;
   dbg.RedrawGrid;
End;

Procedure TFEstCxCli.ProcessSaldo;
Var
   nSaldoAcu, nSaldoAnt, nSaldo,
      eSaldoLOC, eSaldoEXT,
      eSaldoAcu, eSaldoAnt, eSaldo: Double;
Begin
   With cds Do
   Begin
      DisableControls;
      First;

      nSaldoAnt := SaldoRealL;
      eSaldoAnt := SaldoRealE;

      nSaldo := 0;
      eSaldo := 0;

      While Not eof Do
      Begin

         If FieldByName('DOCRESTA').AsString = 'S' Then
         Begin
            nSaldo := FieldByName('SALLOC').AsFloat * (-1);
            eSaldo := FieldByName('SALEXT').AsFloat * (-1);
         End
         Else
         Begin
            nSaldo := FieldByName('SALLOC').AsFloat;
            eSaldo := FieldByName('SALEXT').AsFloat;
         End;

         nSaldoAcu := nSaldoAnt + nSaldo;
         nSaldoAnt := nSaldoAcu;

         eSaldoAcu := eSaldoAnt + eSaldo;
         eSaldoAnt := eSaldoAcu;

         Edit;

         // saldos  en moneda local y extrajera
         FieldByName('COL_2').AsFloat := 0;
         FieldByName('COL_3').AsFloat := 0;

         If StrToFloat(stcam) > 1 Then
         Begin

            If FieldByName('SALLOC').Visible Then
            Begin
               If DMCXC.wTMonLoc = FieldByName('TMONID').AsString Then
               Begin
                  eSaldoLOC := FieldByName('SALLOC').AsFloat;
                  FieldByName('COL_2').AsFloat := eSaldoLOC;
                  eSaldoEXT := FieldByName('SALLOC').AsFloat / StrToFloat(stcam);
                  FieldByName('COL_3').AsFloat := eSaldoEXT;
               End
               Else
               Begin
                  eSaldoLOC := FieldByName('SALEXT').AsFloat * StrToFloat(stcam);
                  FieldByName('COL_2').AsFloat := eSaldoLOC;
                  eSaldoEXT := FieldByName('SALEXT').AsFloat;
                  FieldByName('COL_3').AsFloat := eSaldoEXT;
               End;
            End
            Else
            Begin
               If DMCXC.wTMonLoc = FieldByName('TMONID').AsString Then
               Begin
                  eSaldoLOC := FieldByName('MTOLOC').AsFloat;
                  FieldByName('COL_2').AsFloat := eSaldoLOC;
                  eSaldoEXT := FieldByName('MTOLOC').AsFloat / StrToFloat(stcam);
                  FieldByName('COL_3').AsFloat := eSaldoEXT;
               End
               Else
               Begin
                  eSaldoLOC := FieldByName('MTOEXT').AsFloat * StrToFloat(stcam);
                  FieldByName('COL_2').AsFloat := eSaldoLOC;
                  eSaldoEXT := FieldByName('MTOEXT').AsFloat;
                  FieldByName('COL_3').AsFloat := eSaldoEXT;
               End;
            End;
         End;
         Post;
         Next;
      End;
      First;
      EnableControls;
   End;
End;

Procedure TFEstCxCli.dbgEst2CalCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If (Field.FieldName = 'COL_2') Or (Field.FieldName = 'COL_3') Then
      If (Not Highlight) Then
      Begin
         ABrush.Color := clInfoBk;
         AFont.Color := clBlue;
         AFont.Style := AFont.Style + [fsBold];
      End
      Else
      Begin
         AFont.Color := clHighlightText;
      End;

   If (Field.FieldName = 'TMONABR') Then
   Begin
      If MonLocal(DMCXC.cdsQry2.FieldByName('TMONABR').AsString) Then
      Begin
         If (Not Highlight) Then
         Begin
            AFont.Color := clBlue;
         End
         Else
         Begin
            AFont.Color := clHighlightText;
         End;
      End
      Else
      Begin
         If (Not Highlight) Then
         Begin
            AFont.Color := clGreen;
         End
         Else
         Begin
            AFont.Color := clHighlightText;
         End;
      End;
   End;

   If (Field.FieldName = 'CCFVCMTO') Then
   Begin
      If DMCXC.cdsQry2.FieldByName('CCFVCMTO').AsDateTime > DMCXC.DateS Then
      Begin
         If (Not Highlight) Then
         Begin
            AFont.Color := clBlack;
         End
         Else
         Begin
            AFont.Color := clHighlightText;
         End;
      End
      Else
         If DMCXC.cdsQry2.FieldByName('CCFVCMTO').AsDateTime < DMCXC.DateS Then
         Begin
            If (Not Highlight) Then
            Begin
               AFont.Color := clRed;
            End
            Else
            Begin
               AFont.Color := clHighlightText;
            End;
         End;
   End;
   If (Field.FieldName = 'MTOLOC') Or (Field.FieldName = 'PAGLOC')
      Or (Field.FieldName = 'SALLOC') Then
   Begin
      If (Not Highlight) Then
      Begin
         AFont.Color := clBlue;
      End
      Else
      Begin
         AFont.Color := clHighlightText;
      End;
   End;
   If (Field.FieldName = 'MTOEXT') Or (Field.FieldName = 'PAGEXT')
      Or (Field.FieldName = 'SALEXT') Then
   Begin
      If (Not Highlight) Then
      Begin
         AFont.Color := clGreen;
      End
      Else
      Begin
         AFont.Color := clHighlightText;
      End;
   End;
End;

Function TFEstCxCli.MonLocal(Const CodMoneda: String): Boolean;
Var
   bmk: TBookMark;
Begin
   bmk := DMCXC.cdsTMon.GetBookmark;

   result := DMCXC.cdsTMon.Locate('TMONABR', CodMoneda, []);

   If result Then
      result := DMCXC.cdsTMon.FieldByName('TMON_LOC').AsString = 'L';

   DMCXC.cdsTMon.GotoBookmark(bmk);
   DMCXC.cdsTMon.FreeBookmark(bmk);
End;

Procedure TFEstCxCli.Z2bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

Function TFEstCxCli.NomMoneda(Const CodMoneda: String): String;
Var
   bmk: TBookMark;
Begin
   bmk := DMCXC.cdsTMon.GetBookmark;
   result := '';
   If DMCXC.cdsTMon.Locate('TMONID', CodMoneda, []) Then
      result := DMCXC.cdsTMon.FieldByName('TMONDES').AsString;

   DMCXC.cdsTMon.GotoBookmark(bmk);
   DMCXC.cdsTMon.FreeBookmark(bmk);
End;

Procedure TFEstCxCli.dtpFINExit(Sender: TObject);
Begin

   If dtpINI.Date > dtpFIN.Date Then
   Begin
      Application.MessageBox('La fecha inicial no debe ser mayor que la fecha final',
         'Error en fechas', MB_ICONERROR + MB_OK);
      dtpINI.SetFocus;
   End;
End;

Procedure TFEstCxCli.cGRID(dbg: TwwDBGrid);
Begin
   With dbg.Selected Do
   Begin
      Clear;
      Add('POS'#9'3'#9'Pos'#9'F');
      If dbg.Name = 'dbgEst2' Then
      Begin
         Add('DOCABR'#9'8'#9'Tipo~Doc.'#9'F');
         Add('CCNODOC'#9'7'#9'Nº de~Doc.'#9'F');
      End
      Else
      Begin
         Add('CCNODOC'#9'10'#9'Nº de~Letra'#9'F');
         Add('SITUADES'#9'10'#9'Situación'#9'F');
         Add('CCFLAGPROT'#9'3'#9'Pro'#9'F');
         Add('UBICADES'#9'10'#9'Ubicación'#9'F');
         Add('CCNLETBCO'#9'10'#9'Nº Bancario~Letra'#9'F');
      End;
      Add('DCCOMABR'#9'7'#9'Con. Pago.'#9'F');
      Add('CCFEMIS'#9'10'#9'Fecha ~Emisión'#9'F');
      Add('CCFVCMTO'#9'10'#9'Fecha de~Vencimiento'#9'F');
      Add('FECHA'#9'10'#9'Cancelación'#9'F');
      Add('EDAD'#9'4'#9'Edad'#9'F');

      Begin
         Add('MTOEXT'#9'10'#9'Cargo~(ME)'#9'F');
         Add('PAGEXT'#9'10'#9'Abono~(ME)'#9'F');
         Add('SALEXT'#9'10'#9'Saldo~(ME)'#9'F');
      End;
      Add('CCTCAMPR'#9'4'#9'T.C.'#9'F');
      Add('TMONABR'#9'4'#9'T.M.'#9'F');

      If dbg.Name = 'dbgEst2' Then
      Begin
         Add('MTOLOC'#9'10'#9'Cargo~(MN)'#9'F');
         Add('PAGLOC'#9'10'#9'Abono~(MN)'#9'F');
         Add('SALLOC'#9'10'#9'Saldo~(MN)'#9'F');
      End
      Else
         Add('SALLOC'#9'14'#9'Saldo~(MN)'#9'F');
      Add('COL_2'#9'12'#9'Saldo ~al T.C.(MN)'#9'F');
      Add('COL_3'#9'10'#9'Saldo ~al T.C.(ME)'#9'F');

   End;
End;

Procedure TFEstCxCli.Totales;
Var
   xTotS, xTotD, xTotSTC, xTotDTC: Single;
   nAboL, nAboE: Double;
   sAboL, sAboE: String;
Begin
//   dbe1.Caption:='0.00';
//   dbe2.Caption:='0.00';

   xTotS := OperClientDataSet(DMCXC.cdsQry2, 'SUM(SALLOC)', '') + OperClientDataSet(DMCXC.cdsQry4, 'SUM(SALLOC)', '') + OperClientDataSet(DMCXC.cdsQry7, 'SUM(CCSALLOC)', '') - OperClientDataSet(DMCXC.cdsQry5, 'SUM(CCSALLOC)', '') - OperClientDataSet(DMCXC.cdsQry6, 'SUM(CCSALLOC)', 'CCPAGLOC<=0');
   xTotD := OperClientDataSet(DMCXC.cdsQry2, 'SUM(SALEXT)', '') + OperClientDataSet(DMCXC.cdsQry4, 'SUM(SALEXT)', '') + OperClientDataSet(DMCXC.cdsQry7, 'SUM(CCSALEXT)', '') - OperClientDataSet(DMCXC.cdsQry5, 'SUM(CCSALEXT)', '') - OperClientDataSet(DMCXC.cdsQry6, 'SUM(CCSALEXT)', 'CCPAGEXT<=0');

   sAboE := dbgEst6.ColumnByName('CCSALEXT').FooterValue;
   sAboL := dbgEst6.ColumnByName('CCSALLOC').FooterValue;
   sAboE := StringReplace(sAboE, ',', '', [rfReplaceAll]);
   sAboL := StringReplace(sAboL, ',', '', [rfReplaceAll]);

   If Length(Trim(dbgEst6.ColumnByName('CCSALLOC').FooterValue)) = 0 Then
      nAboL := 0
   Else
      nAboL := StrtoFloat(sAboL);

   If Length(trim(dbgEst6.ColumnByName('CCSALEXT').FooterValue)) = 0 Then
      nAboE := 0
   Else
      nAboE := StrtoFloat(sAboE);

//   dbe3.Caption:=floattostrf( xTotS-nAboL, ffNumber, 15, 2);
//   dbe4.Caption:=floattostrf( xTotD-nAboE, ffNumber, 15, 2);

//   dbe1.Caption:=floattostrf( SaldoRealL, ffNumber, 15, 2);
//   dbe2.Caption:=floattostrf( SaldoRealE, ffNumber, 15, 2);
End;

{//** 28/10/2002 - PJSV
procedure TFEstCxCli.dbgEst2DblClick(Sender: TObject);
var c:string;
begin
  if ((dbgEst2.DataSource.DataSet.FieldByName('PAGLOC').AsCurrency = 0)
     or dbgEst2.DataSource.DataSet.FieldByName('PAGLOC').IsNull )
   and ((dbgEst2.DataSource.DataSet.FieldByName('PAGEXT').AsCurrency = 0)
       or dbgEst2.DataSource.DataSet.FieldByName('PAGEXT').IsNull ) then
  begin
   Raise Exception.Create('No hay abonos Efectuados a Este Documento') ;
  end ;

  if (DMCXC.SRV_D = 'DB2NT') or (DMCXC.SRV_D = 'DB2400') then
  begin
    c :=' SELECT '+
      ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, '+
      ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, '+
      ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, '+
      ' A.DCCMTOORI, A.CCFCANJE, '+
      ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC '+
      ' FROM '+
      ' CXC305 A '+
      ' LEFT JOIN TGE103 E  ON (E.TMONID=A.TMONID)'+
      ' LEFT JOIN TGE110 C  ON C.DOCMOD=''CXC'' and C.DOCID=A.DOCID2 '+
      ' INNER JOIN TGE110 B ON B.DOCMOD=''CXC'' and B.DOCID=A.DOCID  '+
      ' AND B.DOCTIPREG<>''NC'''+' AND B.DOC_FREG<>''H'''+' AND B.DOC_FREG<>''A'''+
      ' AND B.DOC_FREG<>''L'''+
      ' WHERE A.CIAID='+QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CIAID').AsString)+
            ' AND A.DOCID='+QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('DOCID').AsString)+
            ' AND A.CCSERIE='+QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString)+
            ' AND A.CCNODOC='+QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString)+
      ' AND A.CLIEID = '+QuotedStr(dblcClie.text);
  end
  else
   if (DMCXC.SRV_D = 'ORACLE') then
   begin

   end;
    Screen.Cursor := crHourGlass;
  DMCXC.cdsQry8.Close;
  DMCXC.cdsQry8.DataRequest (c) ;
  DMCXC.cdsQry8.Open;
  if DMCXC.cdsQry8.IndexFieldNames<>'CIAID;DOCID;CCSERIE;CCNODOC' then
   DMCXC.cdsQry8.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC';
  DMCXC.cdsQry8.MasterSource:=DMCXC.dsQry2;
  DMCXC.cdsQry8.MasterFields:='CIAID;DOCID;CCSERIE;CCNODOC';

  Application.CreateForm(TFDetAmo,FDetAmo);
  try
   FDetAmo.Compania   := DMCXC.cdsQry2.FieldByName('CIAID').AsString;
   FDetAmo.TDocumento := DMCXC.cdsQry2.FieldByName('DOCID').AsString;
   FDetAmo.Documento  := DMCXC.cdsQry2.FieldByName('CCNODOC').AsString;
   FDetAmo.Serie      := DMCXC.cdsQry2.FieldByName('CCSERIE').AsString;
   FDetAmo.Cliente    := DMCXC.cdsQry2.FieldByName('CLIEID').AsString;
   FDetAmo.MonLoc     := (DMCXC.cdsQry2.FieldByName('TMON_LOC').AsString='L');
   FDetAmo.Hist       := False;

   FDetAmo.Generate;
   ShowWindow( FDetAmo.Handle, SW_HIDE);
   if FDetAmo.MonLoc then
   begin
    FDetAmo.DImporte:= DMCXC.cdsQry2.FieldByName('MTOLOC').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry2.FieldByName('SALLOC').AsFloat ;
    end
   else begin
    FDetAmo.DImporte:= DMCXC.cdsQry2.FieldByName('MTOEXT').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry2.FieldByName('SALEXT').AsFloat ;
   end;
   //lLENAR CLIENTE Y TIPO DE DOCUMENTO
   With FDetAmo do
   begin
    dbeCLIE.Text := self.dbeCLIE.Text ;
    dbeTDOC.Text := DMCXC.cdsQry2.FieldByName('DOCABR').AsString ;
   end ;
   //
   FDetAmo.ShowModal;
  finally
   FDetAmo.Free;
  end;
  Screen.Cursor := crDefault;
end;
}

Procedure TFEstCxCli.cLetras;
Begin
   sSQL2 := sSQL;

   DMCXC.cdsQry4.ProviderName := 'dspTGE';
   DMCXC.cdsQry4.Close;
   DMCXC.cdsQry4.DataRequest(sSQL2);
   DMCXC.cdsQry4.Open;
End;

Procedure TFEstCxCli.bbtnPrintClick(Sender: TObject);
Var
   xSQL: String;
   sSQL1, sSQL: String;
Begin
{   case rgEST.itemindex of
   0: begin
        sSQL1:='';
      end;
   1: begin
        sSQL1:=' AND CXC.CCESTADO=''C''';
      end;
   2: begin
        sSQL1:=' AND CXC.CCESTADO=''P''';
      end
    end;

   sSQL:=' SELECT DOC.DOCABR,MON.TMONABR, '+
         ' CCSERIE,CCNODOC,CCFEMIS,CCFVCMTO,CXC.TMONID,CCMTOORI,CCMTOLOC,CCPAGLOC,CCSALLOC, '+
         ' CCMTOEXT,CCPAGEXT,CCSALEXT,CXC.DOCID '+
         ' FROM CXC301 CXC '+
         ' LEFT JOIN TGE103 MON ON MON.TMONID=CXC.TMONID '+
         ' LEFT JOIN TGE110 DOC ON DOC.DOCMOD=''CXC'' AND DOC.DOCID=CXC.DOCID '+
         ' WHERE CXC.CLIEID='+QuotedStr(dblcCLIE.text)+sSQL1+
         ' ORDER BY CCFEMIS,CXC.DOCID ';
   DMCXC.cdsQry2.Close;
   DMCXC.cdsQry2.DataRequest(sSQL);
   DMCXC.cdsQry2.Open;
   pprCtaCte.Print;}
   pprCtaCte.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\CtaCteCarta.rtm'; // \CtaCteInc.rtm
   pprCtaCte.template.LoadFromFile;

   pplblCiaINC.caption := DMCXC.BuscaQry2('dspTGE', 'TGE101', 'CIADES,CIATLF,CIAFAX', 'CIAID=' + QuotedStr(CIAID), 'CIADES');
   pplblTelefonoInc.Caption := 'Teléfono: ' + DMCXC.cdsQry6.FieldByName('CIATLF').AsString + ' Fax : ' + DMCXC.cdsQry6.FieldByName('CIAFAX').AsString;
   pplblFechaINC.caption := DateToStr(dtpFIN.date);
   pplblClienteInc.caption := dbeCLIE.text;
   pplblRucInc.caption := 'RUC: ' + DMCXC.cdsCxC.FieldByName('CLIERUC').AsString + ' Telf: ' + DMCXC.cdsCxC.FieldByName('CLIETELF').AsString;
   pplblDirInc.caption := DMCXC.cdsCxC.FieldByName('CLIEDIR').AsString;
   pplblDistritoINC.caption := DMCXC.cdsCxC.FieldByName('ZIPDES').AsString;
   pplblCodigoInc.caption := 'Código Cliente : ' + DMCXC.cdsCxC.FieldByName('CLIEID').AsString;
   pplblZonaInc.caption := 'Zona de Venta  : ' + DMCXC.cdsCxC.FieldByName('ZVTADES').AsString;
   pplblVendedorINC.caption := 'Vendedor       : ' + DMCXC.cdsCxC.FieldByName('VENOMBRES').AsString;

   ppdbCtaCte.DataSource := DMCXC.dsReporte;
   pprCtaCte.DataPipeline := ppdbCtaCte;
//   ppDesigner1.report:=pprCtaCte;
//   ppDesigner1.Show;
   pprCtaCte.print;
   pprCtaCte.Stop;
End;

Procedure TFEstCxCli.BitBtn1Click(Sender: TObject);
Var
   xxSQL, xxCia, xNomrtm: String;
   x10: integer;
Begin
   AceptarCompleto;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 Do
   Begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
         Self.Components[x10].Free;
      x10 := x10 - 1;
   End;

   xCiaDes := DMCXC.cdsCia.FieldByName('CIADES').AsString;
   xNomrtm := ExtractFilePath(application.ExeName) + wRutaRpt + '\CtaCte2.rtm';
   ppReport2.TEMPLATE.FileName := xNomrtm;
   ppReport2.template.LoadFromFile;
   PPReport2.Print;
   PPReport2.stop;
  //ppDesigner1.Show;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 Do
   Begin
      If Self.Components[x10].ClassName = 'TppGroup' Then
         Self.Components[x10].Free;
      x10 := x10 - 1;
   End;
End;

Procedure TFEstCxCli.dbgEst2CalcTitleAttributes(Sender: TObject;
   AFieldName: String; AFont: TFont; ABrush: TBrush;
   Var ATitleAlignment: TAlignment);
Begin
   If (AFieldName = 'CCNODOC') Or (AFieldName = 'CCFEMIS') Or (AFieldName = 'CCFVCMTO') Then
      Afont.Color := clRed;
End;

Procedure TFEstCxCli.dbgEst3CalcTitleAttributes(Sender: TObject;
   AFieldName: String; AFont: TFont; ABrush: TBrush;
   Var ATitleAlignment: TAlignment);
Begin
   If (AFieldName = 'CCNLETBCO') Or (AFieldName = 'CCNODOC') Or (AFieldName = 'CCFEMIS') Or (AFieldName = 'CCFVCMTO') Then
      Afont.Color := clRed;
End;

Procedure TFEstCxCli.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;

End;

Procedure TFEstCxCli.dbeTCAMBKeyPress(Sender: TObject; Var Key: Char);
Var
   xStr: String;
Begin
   If Not (Key In ['0'..'9', '.', #8]) Then
   Begin
      Key := #0;
   End;
   xStr := TCustomEdit(self.ActiveControl).text;
   If key = '.' Then
      If pos('.', xSTR) <> 0 Then
         Key := #0;
End;

Procedure TFEstCxCli.ppHeaderBand2BeforePrint2(Sender: TObject);
Var
   xSQL: String;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      xSQL := ' SELECT TGE204.*,Z.ZVTADES FROM TGE204 ' +
         ' LEFT JOIN FAC106 Z ON Z.ZVTAID=TGE204.ZONVTAID ' +
         ' WHERE TGE204.CIAID=' + QuotedStr(CiaID) + ' AND TGE204.CLIEID=' + QuotedStr(Cliente);
   If (DMCXC.SRV_D = 'ORACLE') Then
      xSQL := ' SELECT TGE204.*,Z.ZVTADES FROM TGE204,FAC106 Z ' +
         ' WHERE TGE204.CIAID=' + QuotedStr(CiaID) + ' AND TGE204.CLIEID=' + QuotedStr(Cliente) + ' AND Z.ZVTAID(+)=TGE204.ZONVTAID';

   DMCXC.cdsSQL.Close;
   DMCXC.cdsSQL.DataRequest(xSQL);
   DMCXC.cdsSQL.Open;

   pplCia.Caption := xCiaDes;
   If chbFecha.checked Then
   Begin
      pplSalMN.Caption := '0.00';
      pplSalME.Caption := '0.00';
      pplSalMN.visible := False;
      pplSalME.visible := False;
      pplblTSalME.visible := False;
      pplblTSalMN.visible := False;
      pplPeriodo.Caption := '     Al ' + dtpFIN.Text;
   End
   Else
   Begin
      pplPeriodo.Caption := dtpINI.Text + ' al ' + dtpFIN.Text;
      pplSalMN.visible := True;
      pplSalME.visible := True;
      pplblTSalME.visible := True;
      pplblTSalMN.visible := True;
//      pplSalMN.Caption  := stt3.Caption;
//      pplSalME.Caption  := stt4.Caption;
   End;

   pplCod.caption := DMCXC.cdsSQL.FieldByName('CLIEID').AsString;
   pplRUC.caption := DMCXC.cdsSQL.FieldByName('CLIERUC').AsString;
   pplCli.caption := DMCXC.cdsSQL.FieldByName('CLIEDES').AsString;
   pplDir.caption := DMCXC.cdsSQL.FieldByName('CLIEDIR').AsString;
   pplLin.caption := FloatToStrF(DMCXC.cdsSQL.FieldByName('CLIECREMAX').AsFloat, ffFixed, 15, 2);
   pplZon.caption := DMCXC.cdsSQL.FieldByName('ZONVTAID').AsString + ' - ' + DMCXC.cdsSQL.FieldByName('ZVTADES').AsString;
   pplTel.caption := DMCXC.cdsSQL.FieldByName('CLIETELF').AsString;

//   pplSalMN.Caption  := stt3.Caption;
//   pplSalME.Caption  := stt4.Caption;
//   pplMovMN.Caption  := dbe3.Caption;
//   pplMovME.Caption  := dbe4.Caption;
//   pplActMN.Caption  := dbe1.Caption;
//   pplActME.Caption  := dbe2.Caption;

End;

Procedure TFEstCxCli.ppReport2PreviewFormCreate(Sender: TObject);
Begin
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
End;

Procedure TFEstCxCli.cFooterCheque(dbg: TwwDBGrid; cds: TwwClientDataSet);
Var
   Mloc, MExt, TLoc, TExt: Double;
Begin
   Mloc := OperClientDataSet(cds, 'SUM(CCMTOLOC)', '');
   MExt := OperClientDataSet(cds, 'SUM(CCMTOEXT)', '');
   Tloc := OperClientDataSet(cds, 'SUM(CCSALLOC)', '');
   TExt := OperClientDataSet(cds, 'SUM(CCSALEXT)', '');
   dbg.ColumnByName('CCMTOLOC').FooterValue := floattostrf(MLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCMTOEXT').FooterValue := floattostrf(MExt, ffNumber, 15, 2);
   dbg.ColumnByName('CCSALLOC').FooterValue := floattostrf(TLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCSALEXT').FooterValue := floattostrf(TExt, ffNumber, 15, 2);
   dbg.FooterCellColor := clInfoBk;
   dbg.RedrawGrid;
End;

Procedure TFEstCxCli.cFooterAnticipo(dbg: TwwDBGrid;
   cds: TwwClientDataSet);
Var
   Mloc, MExt, TLoc, TExt: Double;
Begin
   Mloc := OperClientDataSet(cds, 'SUM(CCMTOLOC)', '');
   MExt := OperClientDataSet(cds, 'SUM(CCMTOEXT)', '');
   Tloc := OperClientDataSet(cds, 'SUM(CCSALLOC)', '');
   TExt := OperClientDataSet(cds, 'SUM(CCSALEXT)', '');
   dbg.ColumnByName('CCMTOLOC').FooterValue := floattostrf(MLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCMTOEXT').FooterValue := floattostrf(MExt, ffNumber, 15, 2);
   dbg.ColumnByName('CCSALLOC').FooterValue := floattostrf(TLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCSALEXT').FooterValue := floattostrf(TExt, ffNumber, 15, 2);
   dbg.FooterCellColor := clInfoBk;
   dbg.RedrawGrid;
End;

Procedure TFEstCxCli.cFooterNCredito(dbg: TwwDBGrid;
   cds: TwwClientDataSet);
Var
   Mloc, MExt, TLoc, TExt, PLoc, PExt: Double;
Begin
   Mloc := OperClientDataSet(cds, 'SUM(CCMTOLOC)', '');
   MExt := OperClientDataSet(cds, 'SUM(CCMTOEXT)', '');
   Tloc := OperClientDataSet(cds, 'SUM(CCSALLOC)', '');
   TExt := OperClientDataSet(cds, 'SUM(CCSALEXT)', '');
   Ploc := OperClientDataSet(cds, 'SUM(CCPAGLOC)', '');
   PExt := OperClientDataSet(cds, 'SUM(CCPAGEXT)', '');
   dbg.ColumnByName('CCMTOLOC').FooterValue := floattostrf(MLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCMTOEXT').FooterValue := floattostrf(MExt, ffNumber, 15, 2);
   dbg.ColumnByName('CCPAGLOC').FooterValue := floattostrf(PLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCPAGEXT').FooterValue := floattostrf(PExt, ffNumber, 15, 2);
   dbg.ColumnByName('CCSALLOC').FooterValue := floattostrf(TLoc, ffNumber, 15, 2);
   dbg.ColumnByName('CCSALEXT').FooterValue := floattostrf(TExt, ffNumber, 15, 2);
   dbg.FooterCellColor := clInfoBk;
   dbg.RedrawGrid;
End;

Procedure TFEstCxCli.dbgEst3CalcCellColors(Sender: TObject; Field: TField;
   State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
Begin
   If (Field.FieldName = 'COL_2') Or (Field.FieldName = 'COL_3') Then
      If (Not Highlight) Then
      Begin
         ABrush.Color := clInfoBk;
         AFont.Color := clBlue;
         AFont.Style := AFont.Style + [fsBold];
      End
      Else
      Begin
         AFont.Color := clHighlightText;
      End;

   If (Field.FieldName = 'TMONABR') Then
   Begin
      If MonLocal(DMCXC.cdsQry2.FieldByName('TMONABR').AsString) Then
      Begin
         If (Not Highlight) Then
         Begin
            AFont.Color := clBlue;
         End
         Else
         Begin
            AFont.Color := clHighlightText;
         End;
      End
      Else
      Begin
         If (Not Highlight) Then
         Begin
            AFont.Color := clGreen;
         End
         Else
         Begin
            AFont.Color := clHighlightText;
         End;
      End;
   End;

   If (Field.FieldName = 'CCFVCMTO') Then
   Begin
      If DMCXC.cdsQry4.FieldByName('CCFVCMTO').AsDateTime > DMCXC.DateS Then
      Begin
         If (Not Highlight) Then
         Begin
            AFont.Color := clBlack;
         End
         Else
         Begin
            AFont.Color := clHighlightText;
         End;
      End
      Else
         If DMCXC.cdsQry4.FieldByName('CCFVCMTO').AsDateTime < DMCXC.DateS Then
         Begin
            If (Not Highlight) Then
            Begin
               AFont.Color := clRed;
            End
            Else
            Begin
               AFont.Color := clHighlightText;
            End;
         End;
   End;
   If (Field.FieldName = 'MTOLOC') Or (Field.FieldName = 'PAGLOC')
      Or (Field.FieldName = 'SALLOC') Then
   Begin
      If (Not Highlight) Then
      Begin
         AFont.Color := clBlue;
      End
      Else
      Begin
         AFont.Color := clHighlightText;
      End;
   End;
   If (Field.FieldName = 'MTOEXT') Or (Field.FieldName = 'PAGEXT')
      Or (Field.FieldName = 'SALEXT') Then
   Begin
      If (Not Highlight) Then
      Begin
         AFont.Color := clGreen;
      End
      Else
      Begin
         AFont.Color := clHighlightText;
      End;
   End;
End;

{
procedure TFEstCxCli.dbgEst4DblClick(Sender: TObject);
var c:string;
begin
   if ((dbgEst4.DataSource.DataSet.FieldByName('CCPAGLOC').AsCurrency = 0)
         or dbgEst4.DataSource.DataSet.FieldByName('CCPAGLOC').IsNull )
      and ((dbgEst4.DataSource.DataSet.FieldByName('CCPAGEXT').AsCurrency = 0)
             or dbgEst4.DataSource.DataSet.FieldByName('CCPAGEXT').IsNull ) then
   begin
      Raise Exception.Create('No hay abonos Efectuados a Este Documento') ;
   end ;

   //
   Screen.Cursor := crHourGlass;

// PAGOS DE CHEQUES
   if (DMCXC.SRV_D = 'DB2NT') or (DMCXC.SRV_D = 'DB2400') then
   begin
        c :=' SELECT '+
            ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, '+
            ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, '+
            ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, '+
            ' A.DCCMTOORI, A.CCFCANJE, '+
            ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC '+
            ' FROM '+
            ' CXC305 A '+
            ' LEFT JOIN TGE103 E ON (E.TMONID=A.TMONID)'+
            ' LEFT JOIN TGE110 C ON C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC'' '+
            ' INNER  JOIN TGE110 B ON B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' '+
            ' AND B.DOC_FREG=''H'''+
      ' WHERE A.CIAID='+QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CIAID').AsString)+
            ' AND A.DOCID='+QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('DOCID').AsString)+
            ' AND A.CCSERIE='+QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString)+
            ' AND A.CCNODOC='+QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString)+
      ' AND A.CLIEID = '+QuotedStr(dblcClie.text);
   end
   else
     if (DMCXC.SRV_D = 'ORACLE') then
     begin

     end;

   DMCXC.cdsQry10.Close;
   DMCXC.cdsQry10.DataRequest (c) ;
   DMCXC.cdsQry10.Open;
   if DMCXC.cdsQry10.IndexFieldNames<>'CIAID;DOCID;CCSERIE;CCNODOC' then
     DMCXC.cdsQry10.IndexFieldNames:='CIAID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsQry10.MasterSource:=DMCXC.dsQry7;
   DMCXC.cdsQry10.MasterFields:='CIAID;DOCID;CCSERIE;CCNODOC';

   Screen.Cursor := crHourGlass;
  Application.CreateForm(TFDetAmo,FDetAmo);
  try
   FDetAmo.Generate;
   ShowWindow( FDetAmo.Handle, SW_HIDE);

   FDetAmo.Compania   := DMCXC.cdsQry7.FieldByName('CIAID').AsString;
   FDetAmo.TDocumento := DMCXC.cdsQry7.FieldByName('DOCID').AsString;
   FDetAmo.Documento  := DMCXC.cdsQry7.FieldByName('CCNODOC').AsString;
   FDetAmo.Serie      := DMCXC.cdsQry7.FieldByName('CCSERIE').AsString;
   FDetAmo.Cliente    := DMCXC.cdsQry7.FieldByName('CLIEID').AsString;
   FDetAmo.MonLoc     := (DMCXC.cdsQry7.FieldByName('TMON_LOC').AsString='L');
   FDetAmo.Hist       := False;
   if FDetAmo.MonLoc then
   begin
    FDetAmo.DImporte:= DMCXC.cdsQry7.FieldByName('CCMTOLOC').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry7.FieldByName('CCSALLOC').AsFloat ;
    end
   else begin
    FDetAmo.DImporte:= DMCXC.cdsQry7.FieldByName('CCMTOEXT').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry7.FieldByName('CCSALEXT').AsFloat ;
   end;
   //lLENAR CLIENTE Y TIPO DE DOCUMENTO
   With FDetAmo do
   begin
    dbeCLIE.Text := self.dbeCLIE.Text ;
    dbeTDOC.Text := DMCXC.cdsQry7.FieldByName('DOCABR').AsString ;
   end ;
   //
   FDetAmo.ShowModal;
  finally
   FDetAmo.Free;
  end;
  Screen.Cursor := crDefault;
end;
}

Procedure TFEstCxCli.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DMCXC.cdsQry8.MasterSource := Nil;
   DMCXC.cdsQry8.IndexFieldNames := '';
   DMCXC.cdsQry8.MasterFields := '';

   DMCXC.cdsQry9.MasterSource := Nil;
   DMCXC.cdsQry9.IndexFieldNames := '';
   DMCXC.cdsQry9.MasterFields := '';

   DMCXC.cdsQry10.MasterSource := Nil;
   DMCXC.cdsQry10.IndexFieldNames := '';
   DMCXC.cdsQry10.MasterFields := '';

   DMCXC.cdsQry12.MasterSource := Nil;
   DMCXC.cdsQry12.IndexFieldNames := '';
   DMCXC.cdsQry12.MasterFields := '';

   DMCXC.cdsReporte.IndexFieldNames := '';
   DMCXC.cdsQry2.IndexFieldNames := '';
   DMCXC.cdsQry4.IndexFieldNames := '';
   DMCXC.cdsQry5.IndexFieldNames := '';
   DMCXC.cdsQry6.IndexFieldNames := '';
   DMCXC.cdsQry7.IndexFieldNames := '';
   DMCXC.cdsQry14.IndexFieldNames := '';

   FVariables.w_Num_Formas := FVariables.w_Num_Formas - 1;
   Action := caFree;

End;

Procedure TFEstCxCli.chbFechaClick(Sender: TObject);
Var
   i: word;
   FDate: TDateTime;
Begin
   i := 1;
   FDate := EnCodeDate(Anio, Mes, i);
   dtpINI.Date := FDate;

   If chbFecha.checked Then
   Begin
      dtpFIN.Date := DMCXC.DateS;
   End
   Else
   Begin
      dtpFIN.Date := FDate + (DaysOfMonth(Mes, Anio) - 1);
   End;
End;

Procedure TFEstCxCli.ppSummaryBand2BeforePrint(Sender: TObject);
Var
   tpCambio, sSQL: String;
Begin

   If DMCXC.wVRN_TipoCambio = '' Then
      tpCambio := 'VPV'
   Else
      tpCambio := DMCXC.wVRN_TipoCambio;

   If DMCXC.SRV_D = 'DB2400' Then
   Begin
      sSQL := ' SELECT FECHA, ' + DMCXC.wReplacCeros + '(TCAM' + tpCambio + ',0) CAMBIO FROM TGE107 ' +
         ' WHERE TMONID=' + QuotedStr(DMCXC.wTMonExt) +
         ' ORDER BY FECHA DESC ';
   End;

   If (DMCXC.SRV_D = 'DB2NT') Then
   Begin
      sSQL := ' SELECT ' + DMCXC.wReplacCeros + '(TCAM' + tpCambio + ',0) CAMBIO FROM TGE107 ' +
         ' WHERE TMONID=' + QuotedStr(DMCXC.wTMonExt) +
         ' ORDER BY FECHA DESC ' +
         ' FETCH FIRST 3 ROWS ONLY ';
   End;
   If (DMCXC.SRV_D = 'ORACLE') Then
   Begin
      sSQL := ' SELECT FECHA, ' + DMCXC.wReplacCeros + '(TCAM' + tpCambio + ',0) CAMBIO FROM TGE107 ' +
         ' WHERE TMONID=' + QuotedStr(DMCXC.wTMonExt) +
         ' ORDER BY FECHA DESC ';
   End;

   DMCXC.cdsSQL.close;
   DMCXC.cdsSQL.DataRequest(sSQL);
   DMCXC.cdsSQL.Open;

 //FACTURAS
   ppvCLF.Value := ppdbcCLF.Value;
   ppvPLF.Value := ppdbcPLF.Value;
   ppvSLF.Value := ppdbcSLF.Value;
   ppvCEF.Value := ppdbcCEF.Value;
   ppvPEF.Value := ppdbcPEF.Value;
   ppvSEF.Value := ppdbcSEF.Value;

 //LETRAS
   ppvCLL.Value := ppdbcCLL.Value;
   ppvPLL.Value := ppdbcPLL.Value;
   ppvSLL.Value := ppdbcSLL.Value;
   ppvCEL.Value := ppdbcCEL.Value;
   ppvPEL.Value := ppdbcPEL.Value;
   ppvSEL.Value := ppdbcSEL.Value;

 //CHEQUES
   ppvCLC.Value := ppdbcCLC.Value;
   ppvPLC.Value := ppdbcPLC.Value;
   ppvSLC.Value := ppdbcSLC.Value;
   ppvCEC.Value := ppdbcCEC.Value;
   ppvPEC.Value := ppdbcPEC.Value;
   ppvSEC.Value := ppdbcSEC.Value;

 //ANTICIPOS
   ppvCLA.Value := ppdbcCLA.Value;
   ppvPLA.Value := ppdbcPLA.Value;
   ppvSLA.Value := ppdbcSLA.Value;
   ppvCEA.Value := ppdbcCEA.Value;
   ppvPEA.Value := ppdbcPEA.Value;
   ppvSEA.Value := ppdbcSEA.Value;

 //N.CREDITO
   ppvCLN.Value := ppdbcCLN.Value;
   ppvPLN.Value := ppdbcPLN.Value;
   ppvSLN.Value := ppdbcSLN.Value;
   ppvCEN.Value := ppdbcCEN.Value;
   ppvPEN.Value := ppdbcPEN.Value;
   ppvSEN.Value := ppdbcSEN.Value;

 //TOTALES
   ppvCLT.Value := ppdbcCLF.Value + ppdbcCLL.Value + ppdbcCLC.Value - ppdbcCLA.Value - ppdbcCLN.Value;
   ppvPLT.Value := ppdbcPLF.Value + ppdbcPLL.Value + ppdbcPLC.Value - ppdbcPLA.Value - ppdbcPLN.Value;
   ppvSLT.Value := ppdbcSLF.Value + ppdbcSLL.Value + ppdbcSLC.Value - ppdbcSLA.Value - ppdbcSLN.Value;
   ppvCET.Value := ppdbcCEF.Value + ppdbcCEL.Value + ppdbcCEC.Value - ppdbcCEA.Value - ppdbcCEN.Value;
   ppvPET.Value := ppdbcPEF.Value + ppdbcPEL.Value + ppdbcPEC.Value - ppdbcPEA.Value - ppdbcPEN.Value;
   ppvSET.Value := ppdbcSEF.Value + ppdbcSEL.Value + ppdbcSEC.Value - ppdbcSEA.Value - ppdbcSEN.Value;

   ppvLin.Value := StrToFloat(pplLin.caption);
   ppvDis.Value := ppvLin.Value - (ppvSET.Value + (ppvSLT.Value * DMCXC.cdsSQL.FieldByName('CAMBIO').AsFloat));

End;

Procedure TFEstCxCli.SpeedButton1Click(Sender: TObject);
Begin
   pnlLetras.Visible := False;
   bbtnImprimeAmortiza.visible := False;
End;

Procedure TFEstCxCli.Historico;
Begin
   dbgHist.DataSource := Nil;
   dbgHist.Selected.Clear;
   dbgHist.Selected.Add('CCHIST'#9'4'#9'No.'#9'F');
   dbgHist.Selected.Add('CCFSITUA'#9'10'#9'Fecha~Cambio'#9'F');
   dbgHist.Selected.Add('UBICA'#9'13'#9'Ubicación'#9'F');
   dbgHist.Selected.Add('SITUA'#9'13'#9'Situación'#9'F');
   dbgHist.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión'#9'F');
   dbgHist.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vencimiento'#9'F');
   dbgHist.Selected.Add('CCTCAMPR'#9'6'#9'Tipo~Cambio'#9'F');
   dbgHist.Selected.Add('CCMTOLOC'#9'9'#9'Importe~(MN)'#9'F');
   dbgHist.Selected.Add('CCMTOEXT'#9'9'#9'Importe~(ME)'#9'F');
   dbgHist.Selected.Add('CCUSER'#9'6'#9'Usuario'#9'F');
   dbgHist.Selected.Add('CCFREG'#9'10'#9'Fecha ~Reg.'#9'F');
   dbgHist.Selected.Add('CCHREG'#9'10'#9'Hora ~Reg.'#9'F');

   TNumericField(DMCXC.cdsHLetras.FieldByName('CCTCAMPR')).DisplayFormat := '###,###,###.#0';
   TNumericField(DMCXC.cdsHLetras.FieldByName('CCMTOLOC')).DisplayFormat := '###,###,###.#0';
   TNumericField(DMCXC.cdsHLetras.FieldByName('CCMTOEXT')).DisplayFormat := '###,###,###.#0';

   dbgHist.DataSource := DMCXC.dsHLetras;
   pnlLetras.Visible := True;
End;

Procedure TFEstCxCli.Z2bbtnRepAnosClick(Sender: TObject);
Var
   sSQL, sSql1: String;
   Y, M, Y1, M1, D: word;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT MESIDR,MESDESL,ANO,CLIECREMAX, SUM(MTOLOC) MTOLOC, SUM(MTOEXT) MTOEXT, ' +
         ' SUM(PAGLOC) PAGLOC, SUM(PAGEXT) PAGEXT, SUM(SALLOC) SALLOC, ' +
         ' SUM(SALEXT) SALEXT, SUM(NRORENOV) NRORENOV, SUM(RENLOC) RENLOC, ' +
         ' SUM(RENEXT) RENEXT, SUM(NROREFINA) NROREFINA, SUM(REFLOC) REFLOC, ' +
         ' SUM(REFEXT) REFEXT, SUM(NRODIF) NRODIF, SUM(DIFLOC) DIFLOC, ' +
         ' SUM(DIFEXT) DIFEXT, SUM(NRODEV) NRODEV, SUM(DEVLOC) DEVLOC, SUM(DEVEXT) DEVEXT, SUM(NROPROT) NROPROT, SUM(PROTLOC) PROTLOC, SUM(PROTEXT) PROTEXT ' +
         '  FROM ( ' +
          // COLUMNA DE CARGOS CXC301 DOCUMENTOS 5,6
      ' SELECT MESIDR,MESDESL,YEAR(CCFEMIS) ANO, 0 CLIECREMAX, SUM(CCMTOLOC) MTOLOC, SUM(CCMTOEXT) MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT, ' +
         ' 0 NRORENOV,0 RENLOC,0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
         ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
         ' FROM CXC301,TGE181 ' + // NO VA CHEQUE
         ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID IN (' + QuotedStr(DMCXC.wsFac) + ',' + QuotedStr(DMCXC.wsBol) + ',' + QuotedStr(DMCXC.wsNDe) + ') AND CCESTADO<>''A'' ' +
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFEMIS) ' +
         ' ' +
         ' UNION ' +
         ' ' +
          // COLUMNA DE ABONOS CXC305 7,8
      ' SELECT MESIDR,MESDESL, YEAR(CCFCANJE) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, SUM(DCCMTOLOC) PAGLOC, SUM(DCCMTOEXT) PAGEXT, 0 SALLOC, 0 SALEXT, ' +
         ' 0 NRORENOV,0 RENLOC,0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT,    ' +
         ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' + // NO VA CHEQUE
         ' FROM CXC305,TGE181 ' +
//          ' WHERE CLIEID='+QuotedStr(dblcCLIE.text)+' AND DOCID IN ('+QuotedStr(DMCXC.wsFac)+','+QuotedStr(DMCXC.wsBol)+','+QuotedStr(DMCXC.wsNDe)+') AND MESID=CHAR(MONTH(CCFCANJE)) '+
      ' WHERE CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID2 NOT IN (' + QuotedStr(DMCXC.wsLet) + ') AND MESID=CHAR(MONTH(CCFCANJE)) ' +
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFCANJE) ' +
         ' ' +
          // COLUMNA DE RENOVACIONES CXC301 11,12,13
      ' UNION ' +
         ' SELECT MESIDR,MESDESL,YEAR(CCFEMIS) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,SUM(CCNRENOV) NRORENOV,SUM(CCMTOLOC) RENLOC, SUM(CCMTOEXT) RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT, ' +
         ' 0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
         ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
         ' FROM CXC301,TGE181 ' +
         ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID =' + QuotedStr(DMCXC.wsLet) + ' AND CCNRENOV=1 ' +
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFEMIS),CCNRENOV ' +
         ' ' +
          // COLUMNA DE REFINANCIACIONES CXC301 14,15,16
      ' UNION ' +
         ' SELECT MESIDR,MESDESL,YEAR(CCFEMIS) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, 0 RENLOC, ' +
         ' 0 RENEXT,COUNT(CCMTOEXT) NROREFINA, SUM(CCMTOLOC) REFLOC, SUM(CCMTOEXT) REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT, ' +
         ' 0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
         ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
         ' FROM CXC301,TGE181 ' +
         ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID =' + QuotedStr(DMCXC.wsLet) + ' AND ' + DMCXC.wReplacCeros + '(CCFLAGVTA,''NULO'')=''NULO'' ' + ' AND CCNRENOV IS NULL ' +
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFEMIS) ' +
         ' ' +
          // COLUMNA DE CHEQUES DIFERIDOS CXC301 14,15,16 !!!!!!!!!!! ESTA MAL
      ' UNION ' +
         ' ' +
{          ' SELECT MESIDR,MESDESL,YEAR(CCFEMIS) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, 0 RENLOC, '+
         ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT, COUNT(CCMTOLOC) NRODIF, SUM(CCMTOLOC) DIFLOC, SUM(CCMTOEXT) DIFEXT, '+
         ' 0 NRODEV, 0 DEVLOC, 0 DEVEXT, '+
         ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT '+
         ' FROM CXC301,TGE181 '+
         ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID='+QuotedStr(dblcCLIE.text)+' AND DOCID ='+QuotedStr(DMCXC.wsChe)+' AND TCANJEID=''DI'' '+
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFEMIS) '+}
      ' SELECT MESIDR,MESDESL,YEAR(FC_FEMIS) ANO,0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, 0 RENLOC, ' +
         '   0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT, COUNT(FC_MTOLOC) NRODIF, SUM(FC_MTOLOC) DIFLOC, SUM(FC_MTOEXT) DIFEXT, ' +
         '   0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
         '   0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
         ' FROM ' +
         '   CAJA314,TGE181 ' +
         ' WHERE ' +
         '   FPAGOID=' + QuotedStr(DMCXC.wsFChe) + '  AND CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND MESIDR= CASE WHEN LENGTH(RTRIM(LTRIM(CHAR(MONTH(FC_FEMIS)))))=1 THEN ''0''||CHAR(MONTH(FC_FEMIS)) ELSE CHAR(MONTH(FC_FEMIS)) END ' +
         ' GROUP BY ' +
         '   MESIDR,MESDESL,YEAR(FC_FEMIS) ' +
         ' ' +
          // COLUMNA DE LETRAS EN PROTESTO 20,21,22
      ' UNION ' +
         ' ' +
{         '  SELECT MESIDR,MESDESL,YEAR(CCFEMIS) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,  0 NRORENOV,0 RENLOC, '+
         ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT, '+
         ' COUNT(CCMTOLOC) NROPROT, SUM(CCMTOLOC) PROTLOC, SUM(CCMTOEXT) PROTEXT '+
         ' FROM CXC301,TGE181  WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID='+QuotedStr(dblcCLIE.text)+' AND DOCID ='+QuotedStr(DMCXC.wsLet)+ ' AND CCFLAGPROT=''S'' '+
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFEMIS) '+
         ' '+}
      ' SELECT MESIDR,MESDESL,CASE WHEN YEAR(D.PLBCFECHA) IS NULL THEN YEAR(CXC301.CCFEMIS) ELSE  YEAR(D.PLBCFECHA) END ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,  0 NRORENOV,0 RENLOC, ' +
         ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT, COUNT(CCMTOLOC) NROPROT, ' +
         ' SUM(CASE WHEN YEAR(D.PLBCFECHA) IS NULL THEN  CCMTOLOC  ELSE LETIMPORTE END) PROTLOC, ' +
         ' SUM(CASE WHEN YEAR(D.PLBCFECHA) IS NULL THEN  CCMTOEXT  ELSE LETIMPORTE END) PROTEXT ' +
         ' FROM CXC301 ' +
         ' LEFT JOIN CXC309 D ON D.CIAID=CXC301.CIAID AND D.DOCID=CXC301.DOCID AND LETRA=CXC301.CCNODOC AND D.CLIEID=CXC301.CLIEID ' +
         ' LEFT JOIN CXC104 ON  D.SITID=CXC104.SITUAID AND CXC104.FLAGPROTESTO=''S'' ,TGE181 ' +
         ' WHERE MESIDI=MONTH(CASE WHEN D.PLBCFECHA IS NULL THEN CXC301.CCFEMIS ELSE D.PLBCFECHA END) AND ' +
         '  CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND CXC301.DOCID =' + QuotedStr(DMCXC.wsLet) + ' AND CCFLAGPROT=''S'' ' +
         ' GROUP BY MESIDR,MESDESL,YEAR(D.PLBCFECHA),YEAR(CXC301.CCFEMIS) ' +
         ' ' +
         ' UNION ' +
         ' ' +
          // COLUMNA DE CHEQUES DEVUELTOS CXC301 17,18,19
         {' SELECT MESIDR,MESDESL,YEAR(CCFEMIS) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, 0 RENLOC, '+
         ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT, 0 NRODIF, 0 DIFLOC, 0 DIFEXT, '+
         ' COUNT(CCMTOLOC) NRODEV, SUM(CCMTOLOC) DEVLOC, SUM(CCMTOEXT) DEVEXT, 0 NROPROT, 0 PROTLOC, 0 PROTEXT '+
         ' FROM CXC301,TGE181 '+
         ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID='+QuotedStr(dblcCLIE.text)+' AND DOCID ='+QuotedStr(DMCXC.wsChe)+' AND TCANJEID=''DE'' '+
         ' GROUP BY MESIDR,MESDESL,YEAR(CCFEMIS) '+}
      ' SELECT MESIDR,MESDESL,CASE WHEN YEAR(C.CHQ_FECDEV) IS NULL THEN YEAR(CXC301.CCFEMIS) ELSE YEAR(C.CHQ_FECDEV) END ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, 0 RENLOC, ' +
         ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT, 0 NRODIF, 0 DIFLOC, 0 DIFEXT, ' +
         ' COUNT(CCMTOLOC) NRODEV, ' +
         ' SUM(CASE WHEN C.CHQ_FECDEV IS NULL THEN CCMTOLOC ELSE C.TXMTOLOC END ) DEVLOC, ' +
         ' SUM(CASE WHEN C.CHQ_FECDEV IS NULL THEN CCMTOEXT ELSE C.TXMTOEXT END ) DEVEXT, ' +
         ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
         ' FROM CXC301 LEFT JOIN CAJA305 C ON C.CIAID=CXC301.CIAID AND C.FPAGOID=' + QuotedStr(DMCXC.wsFChe) + ' AND C.TXNOCHQ=CXC301.CCNODOC AND C.CLIEID=CXC301.CLIEID AND C.CHQ_ESTADO=''DEVUELTO''  ,TGE181 ' +
         ' WHERE MESIDI=CASE WHEN  YEAR(C.CHQ_FECDEV) IS NULL THEN MONTH(CXC301.CCFEMIS) ELSE MONTH(C.CHQ_FECDEV) END AND ' +
         ' CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND CXC301.DOCID =' + QuotedStr(DMCXC.wsChe) + ' AND TCANJEID=''DE'' ' +
         ' GROUP BY MESIDR,MESDESL,YEAR(CXC301.CCFEMIS),YEAR(C.CHQ_FECDEV) ' +
         ' ' +
         ' ) TABLA ' +
         ' GROUP BY MESIDR,MESDESL,CLIECREMAX,ANO ' +
         ' ORDER BY MESIDR,MESDESL,ANO ';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         sSQL := ' SELECT MESIDR,MESDESL,ANO,CLIECREMAX, SUM(MTOLOC) MTOLOC, SUM(MTOEXT) MTOEXT, ' +
            ' SUM(PAGLOC) PAGLOC, SUM(PAGEXT) PAGEXT, SUM(SALLOC) SALLOC, ' +
            ' SUM(SALEXT) SALEXT, SUM(NRORENOV) NRORENOV, SUM(RENLOC) RENLOC, ' +
            ' SUM(RENEXT) RENEXT, SUM(NROREFINA) NROREFINA, SUM(REFLOC) REFLOC, ' +
            ' SUM(REFEXT) REFEXT, SUM(NRODIF) NRODIF, SUM(DIFLOC) DIFLOC, ' +
            ' SUM(DIFEXT) DIFEXT, SUM(NRODEV) NRODEV, SUM(DEVLOC) DEVLOC, SUM(DEVEXT) DEVEXT, SUM(NROPROT) NROPROT, SUM(PROTLOC) PROTLOC, SUM(PROTEXT) PROTEXT ' +
            '  FROM ( ' +
            ' SELECT MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ANO, 0 CLIECREMAX, SUM(CCMTOLOC) MTOLOC, SUM(CCMTOEXT) MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT, ' +
            ' 0 NRORENOV,0 RENLOC,0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
            ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
            ' FROM CXC301,TGE181 ' +
            ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID IN (' + QuotedStr(DMCXC.wsFac) + ',' + QuotedStr(DMCXC.wsBol) + ',' + QuotedStr(DMCXC.wsNCre) + ') ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ' +
            ' UNION ' +
            ' SELECT MESIDR,MESDESL, TO_NUMBER(TO_CHAR(CCFCANJE,''YYYY'')) ANO, 0 CLIECREMAX, 0 MTOLOC, 0 MTOEXT, SUM(DCCMTOLOC) PAGLOC, SUM(DCCMTOEXT) PAGEXT, 0 SALLOC, 0 SALEXT, ' +
            ' 0 NRORENOV,0 RENLOC,0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT,    ' +
            ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
            ' FROM CXC305,TGE181 ' +
            ' WHERE CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID IN (' + QuotedStr(DMCXC.wsFac) + ',' + QuotedStr(DMCXC.wsBol) + ',' + QuotedStr(DMCXC.wsNDe) + ') AND MESID= TO_NUMBER(TO_CHAR(CCFCANJE,''MM'')) ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFCANJE,''YYYY'')) ' +
            ' UNION ' +
            ' SELECT MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ANO, 0 CLIECREMAX, ' +
            ' 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,SUM(CCNRENOV) NRORENOV,' +
            ' SUM(CCMTOLOC) RENLOC, SUM(CCMTOEXT) RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF,' +
            '  0 DIFLOC, 0 DIFEXT, ' +
            ' 0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
            ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
            ' FROM CXC301,TGE181 ' +
            ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID =' + QuotedStr(DMCXC.wsLet) + ' AND CCNRENOV=1 ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')),CCNRENOV ' +
            ' UNION ' +
            ' SELECT MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ANO, 0 CLIECREMAX,' +
            ' 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, ' +
            ' 0 RENLOC, ' +
            ' 0 RENEXT,COUNT(CCMTOEXT) NROREFINA, SUM(CCMTOLOC) REFLOC, SUM(CCMTOEXT) REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT, ' +
            ' 0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
            ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
            ' FROM CXC301,TGE181 ' +
            ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' +
            QuotedStr(dblcCLIE.text) + ' AND DOCID =' + QuotedStr(DMCXC.wsLet);

         sSQL1 := sSql1 + ' AND ' + DMCXC.wReplacCeros + '(CCFLAGVTA,''NULO'')=''NULO'' ' + ' AND CCNRENOV IS NULL ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ' +
            ' UNION ' +
            ' SELECT MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ANO, 0 CLIECREMAX,' +
            ' 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, ' +
            ' 0 RENLOC, ' +
            ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT, COUNT(CCMTOLOC) NRODIF, ' +
            ' SUM(CCMTOLOC) DIFLOC, SUM(CCMTOEXT) DIFEXT, ' +
            ' 0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
            ' 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
            ' FROM CXC301,TGE181 ' +
            ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID =' + QuotedStr(DMCXC.wsChe) + ' AND TCANJEID=''DI'' ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ' +
            ' UNION ' +
            '  SELECT MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ANO, 0 CLIECREMAX,' +
            ' 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,  0 NRORENOV,' +
            ' 0 RENLOC, ' +
            ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT,0 NRODIF, 0 DIFLOC, 0 DIFEXT,0 NRODEV, 0 DEVLOC, 0 DEVEXT, ' +
            ' COUNT(CCMTOLOC) NROPROT, SUM(CCMTOLOC) PROTLOC, SUM(CCMTOEXT) PROTEXT ' +
            ' FROM CXC301,TGE181  WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text) + ' AND DOCID =' + QuotedStr(DMCXC.wsLet) + ' AND CCFLAGPROT=''S'' ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ' +
            ' UNION ' +
            ' SELECT MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ANO, 0 CLIECREMAX, ' +
            ' 0 MTOLOC, 0 MTOEXT, 0 PAGLOC, 0 PAGEXT, 0 SALLOC, 0 SALEXT,0 NRORENOV, 0 RENLOC, ' +
            ' 0 RENEXT,0 NROREFINA, 0 REFLOC, 0 REFEXT, 0 NRODIF, 0 DIFLOC, 0 DIFEXT, ' +
            ' COUNT(CCMTOLOC) NRODEV, SUM(CCMTOLOC) DEVLOC, SUM(CCMTOEXT) DEVEXT, 0 NROPROT, 0 PROTLOC, 0 PROTEXT ' +
            ' FROM CXC301,TGE181 ' +
            ' WHERE MESIDR=SUBSTR(CCANOMES,5,2) AND CXC301.CLIEID=' + QuotedStr(dblcCLIE.text)
            + ' AND DOCID =' + QuotedStr(DMCXC.wsChe) + ' AND TCANJEID=''DE'' ' +
            ' GROUP BY MESIDR,MESDESL,TO_NUMBER(TO_CHAR(CCFEMIS,''YYYY'')) ) TABLA ' +
            ' GROUP BY MESIDR,MESDESL,CLIECREMAX,ANO ' +
            ' ORDER BY MESIDR,MESDESL,ANO ';
      End;
   sSql := sSql + sSql1;
   DMCXC.cdsQry12.Close;
   DMCXC.cdsQry12.DataRequest(sSQL);
   DMCXC.cdsQry12.Open;
   DMCXC.cdsQry12.IndexFieldNames := 'MESIDR;ANO';

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      sSQL := 'SELECT CLIECREMAX,ULTFECHA,MONTH(ULTFECHA) MES, ' +
         'YEAR(ULTFECHA) ANO FROM CXC403 WHERE CLIEID=' +
         QuotedStr(dblcCLIE.text) + ' AND CIAID=' + QuotedStr(FCIAID)
   Else
      sSQL := 'SELECT CLIECREMAX,ULTFECHA,TO_NUMBER(TO_CHAR(ULTFECHA,''MM'')) MES, ' +
         ' TO_NUMBER(TO_CHAR(ULTFECHA,''YYYY'')) ANO FROM CXC403 WHERE CLIEID=' +
         QuotedStr(dblcCLIE.text) + ' AND CIAID=' + QuotedStr(FCIAID);
   DMCXC.cdsQry13.Close;
   DMCXC.cdsQry13.DataRequest(sSQL);
   DMCXC.cdsQry13.Open;
   DMCXC.cdsQry13.First;

   While Not DMCXC.cdsQry13.EOF Do
   Begin
      DMCXC.cdsQry12.SetKey;
      DMCXC.cdsQry12.FieldByName('MESIDR').AsString := StrZero(DMCXC.cdsQry13.FieldByName('MES').AsString, 2);
      DMCXC.cdsQry12.FieldByName('ANO').AsString := DMCXC.cdsQry13.FieldByName('ANO').AsString;
      If DMCXC.cdsQry12.Gotokey Then
      Begin
         DMCXC.cdsQry12.Edit;
         DMCXC.cdsQry12.FieldByName('CLIECREMAX').AsFloat := DMCXC.cdsQry13.FieldByName('CLIECREMAX').AsFloat;
         DMCXC.cdsQry12.Post;
      End;

      DMCXC.cdsQry13.Next;
   End;

   If DMCXC.cdsQry12.RecordCount > 0 Then
   Begin
      DecodeDate(DMCXC.dateS, Y, M, D);

      DMCXC.cdsQry12.First;
      While Not DMCXC.cdsQry12.EOF Do
      Begin
         DMCXC.cdsQry12.Edit;
         If (Y = DMCXC.cdsQry12.FieldByName('ANO').AsInteger) And (M = DMCXC.cdsQry12.FieldByName('MESIDR').AsInteger) Then
         Begin
            DMCXC.cdsQry12.FieldByName('CLIECREMAX').AsFloat := rLineaCredito;
         End;

         DMCXC.cdsQry12.FieldByName('SALLOC').AsFloat := DMCXC.cdsQry12.FieldByName('MTOLOC').AsFloat - DMCXC.cdsQry12.FieldByName('PAGLOC').AsFloat;
         DMCXC.cdsQry12.FieldByName('SALEXT').AsFloat := DMCXC.cdsQry12.FieldByName('MTOEXT').AsFloat - DMCXC.cdsQry12.FieldByName('PAGEXT').AsFloat;
         DMCXC.cdsQry12.Post;
         DMCXC.cdsQry12.Next;

      End;
      CalculaTotales;
      ppRepAnos.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\RepAnos.rtm';
      ppRepAnos.template.LoadFromFile;
      pplRATitulo.text := ' ANALISIS DEL CLIENTE: ' + dbeCLIE.text;
      pplblCiaAnos.text := DMCXC.BuscaQry('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + QuotedStr(CiaID), 'CIADES');
      dbplRepAnos.DataSource := DMCXC.dsQry12;
      ppRepAnos.Print;
      ppRepAnos.stop;
    //ppDesigner1.Show;
   End
   Else
   Begin
      ShowMessage('No Hay Registros que mostrar');
   End;

End;

Procedure TFEstCxCli.ppRepAnosPreviewFormCreate(Sender: TObject);
Begin
   TppReport(Sender).PreviewForm.WindowState := WsMaximized;
   TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting := zsPageWidth;
End;

Procedure TFEstCxCli.CalculaTotales;
Var
   sAno, sIndice: String;
   ListaAno: Array[1..10] Of String;
   i, x: word;
Begin
   sIndice := DMCXC.cdsQry12.IndexFieldNames;
   i := 1;
   DMCXC.cdsQry12.IndexFieldNames := 'ANO';
   DMCXC.cdsQry12.First;
   sAno := DMCXC.cdsQry12.FieldByName('ANO').AsString;
   ListaAno[i] := sAno;
   While Not DMCXC.cdsQry12.EOF Do
   Begin
      If sAno <> DMCXC.cdsQry12.FieldByName('ANO').AsString Then
      Begin
         i := i + 1;
         ListaAno[i] := DMCXC.cdsQry12.FieldByName('ANO').AsString;
         sAno := DMCXC.cdsQry12.FieldByName('ANO').AsString;
      End;
      DMCXC.cdsQry12.Next;
   End;
   InsertaRayas;
   For x := 1 To i Do
   Begin
      DMCXC.cdsQry12.Insert;
      DMCXC.cdsQry12.FieldByName('MESIDR').AsString := '99';
      DMCXC.cdsQry12.FieldByName('MESDESL').AsString := 'TOTAL';
      DMCXC.cdsQry12.FieldByName('ANO').AsString := ListaAno[x];
      DMCXC.cdsQry12.FieldByName('CLIECREMAX').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(CLIECREMAX)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('MTOLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(MTOLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('MTOEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(MTOEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('PAGLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(PAGLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('PAGEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(PAGEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('SALLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(SALLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('SALEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(SALEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('NRORENOV').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(NRORENOV)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('RENLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(RENLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('RENEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(RENEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('NROREFINA').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(NROREFINA)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('REFLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(REFLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('REFEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(REFEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('NRODIF').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(NRODIF)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('DIFLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(DIFLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('DIFEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(DIFEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('NRODEV').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(NRODEV)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('DEVLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(DEVLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('DEVEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(DEVEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('NROPROT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(NROPROT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('PROTLOC').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(PROTLOC)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.FieldByName('PROTEXT').AsFloat := OperClientDataSet(DMCXC.cdsQry12, 'SUM(PROTEXT)', 'ANO=' + QuotedStr(ListaAno[x]));
      DMCXC.cdsQry12.Post;
   End;

//  OperClientDataSet( cds , 'SUM(MTOLOC)', '');
   DMCXC.cdsQry12.IndexFieldNames := sIndice;
End;

Procedure TFEstCxCli.InsertaRayas;
Begin
   DMCXC.cdsQry12.Insert;
   DMCXC.cdsQry12.FieldByName('MESIDR').AsString := '99';
   DMCXC.cdsQry12.FieldByName('MESDESL').AsString := '   ';
   DMCXC.cdsQry12.Post;
End;

{//** 28/10/2002 - PJSV
procedure TFEstCxCli.dbgEst6DblClick(Sender: TObject);
var c:string;
begin
  if ((dbgEst6.DataSource.DataSet.FieldByName('CCPAGLOC').AsCurrency = 0)
     or dbgEst6.DataSource.DataSet.FieldByName('CCPAGLOC').IsNull )
   and ((dbgEst6.DataSource.DataSet.FieldByName('CCPAGEXT').AsCurrency = 0)
       or dbgEst6.DataSource.DataSet.FieldByName('CCPAGEXT').IsNull ) then
  begin
   Raise Exception.Create('No hay abonos Efectuados a Este Documento') ;
  end ;

  //
  Screen.Cursor := crHourGlass;

// PAGOS DE CHEQUES
  if (DMCXC.SRV_D = 'DB2NT') or
   (DMCXC.SRV_D = 'DB2400') then
  begin
    c :=' SELECT '+
      ' A.CIAID, A.CLIEID, A.DOCID2 DOCID, A.CCSERIE2 CCSERIE, A.CCNODOC2 CCNODOC, A.TCANJEID, A.DOCID DOCID2, A.CCSERIE CCSERIE2, A.CCNODOC CCNODOC2, A.TMONID, '+
      ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, '+
      ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, '+
      ' A.DCCMTOORI, A.CCFCANJE, '+
      ' C.DOCABR DOCABR2,B.DOCABR,E.TMONDES, E.TMONABR, E.TMON_LOC '+
      ' FROM '+
      ' CXC305 A '+
      ' LEFT JOIN TGE103 E ON (E.TMONID=A.TMONID)'+
      ' LEFT JOIN TGE110 C ON C.DOCID=A.DOCID AND C.DOCMOD=''CXC'' '+
      ' INNER  JOIN TGE110 B ON B.DOCID=A.DOCID2 AND B.DOCMOD = ''CXC'' '+
      ' AND B.DOC_FREG=''A'''+
      ' WHERE A.CIAID='+QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CIAID').AsString)+
      ' AND A.DOCID2='+QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('DOCID').AsString)+
      ' AND A.CCSERIE2='+QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString)+
      ' AND A.CCNODOC2='+QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString)+
      ' AND A.CLIEID = '+QuotedStr(dblcClie.text);
  end
  else
   if (DMCXC.SRV_D = 'ORACLE') then
   begin

   end;

  DMCXC.cdsQry12.Close;
  DMCXC.cdsQry12.DataRequest (c) ;
  DMCXC.cdsQry12.Open;
  if DMCXC.cdsQry12.IndexFieldNames<>'CIAID;DOCID2;CCSERIE2;CCNODOC2' then
   DMCXC.cdsQry12.IndexFieldNames:='CIAID;DOCID2;CCSERIE2;CCNODOC2';
  DMCXC.cdsQry12.MasterSource:=DMCXC.dsQry6;
  DMCXC.cdsQry12.MasterFields:='CIAID;DOCID;CCSERIE;CCNODOC';

  Screen.Cursor := crHourGlass;
  Application.CreateForm(TFDetAmo,FDetAmo);
  try
   FDetAmo.Generate;
   ShowWindow( FDetAmo.Handle, SW_HIDE);

   FDetAmo.Compania   := DMCXC.cdsQry6.FieldByName('CIAID').AsString;
   FDetAmo.TDocumento := DMCXC.cdsQry6.FieldByName('DOCID').AsString;
   FDetAmo.Documento  := DMCXC.cdsQry6.FieldByName('CCNODOC').AsString;
   FDetAmo.Serie      := DMCXC.cdsQry6.FieldByName('CCSERIE').AsString;
   FDetAmo.Cliente    := DMCXC.cdsQry6.FieldByName('CLIEID').AsString;
   FDetAmo.MonLoc     := (DMCXC.cdsQry6.FieldByName('TMON_LOC').AsString='L');
   FDetAmo.Hist       := False;
   if FDetAmo.MonLoc then
   begin
    FDetAmo.DImporte:= DMCXC.cdsQry5.FieldByName('CCMTOLOC').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry5.FieldByName('CCSALLOC').AsFloat ;
    end
   else begin
    FDetAmo.DImporte:= DMCXC.cdsQry5.FieldByName('CCMTOEXT').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry5.FieldByName('CCSALEXT').AsFloat ;
   end;
   //lLENAR CLIENTE Y TIPO DE DOCUMENTO
   With FDetAmo do
   begin
    dbeCLIE.Text := self.dbeCLIE.Text ;
    dbeTDOC.Text := DMCXC.cdsQry6.FieldByName('DOCABR').AsString ;
   end ;
   //
   FDetAmo.ShowModal;
  finally
   FDetAmo.Free;
  end;
  Screen.Cursor := crDefault;
end;
}

Procedure TFEstCxCli.cSQLDocs;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQLDocs := 'SELECT CXC.CCFCANCEL FECHA, COM.DCCOMABR,DAYS(CXC.CCFCANCEL)-DAYS(CXC.CCFVCMTO) EDAD,CXC.CCNODOC, CXC.CCNLETBCO, CXC.CCFEMIS, CXC.CCFVCMTO, CXC.CCTCAMPR, ' +
         'CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
         'CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CCSERIE, CXC.CIAID, CXC.DOCID, ' +
         'MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
         'SIT.SITUAABR SITUADES, CXC.CCMTOORI, CLI.CLIEDES , CXC.TMONID , CXC.CCESTADO , ' +
         DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0) AS COL_2,' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0) AS COL_3, ' +

      '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC ELSE 0 END) AS MTOLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT ELSE 0 END) AS MTOEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN ' + DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGLOC,0) ELSE 0 END) AS SALLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN ' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0) ELSE 0 END) AS SALEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC ELSE 0 END) AS PAGLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT ELSE 0 END) AS PAGEXT ' +

      ' FROM CXC301 CXC ' +
         ' INNER JOIN TGE103 MON ON (CXC.TMONID=MON.TMONID) ' +
         ' LEFT JOIN TGE180 COM ON (CXC.CIAID=COM.CIAID AND CXC.TVTAID=COM.SCOMERID AND COM.CCOMERID=CXC.CCOMERID) ' +
         ' INNER JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'' AND (' +
         DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''XX'' OR ' +
         DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''CH'') AND DOC_FREG=''P'') ' +
//              ' INNER JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'' ' +
//              ' AND DOC.DOCTIPREG<>''NC'''+' AND DOC.DOC_FREG<>''H'''+' AND DOC.DOC_FREG<>''A'''+
//              ' AND DOC.DOC_FREG<>''L'')'+
      ' LEFT JOIN CXC105 UBI ON (CXC.UBIID=UBI.UBICAID) ' +
         ' LEFT JOIN CXC104 SIT ON (CXC.SITID=SIT.SITUAID), ' +
         ' TGE204 CLI ';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         sSQLDocs := 'SELECT CXC.CCFCANCEL FECHA, COM.DCCOMABR,' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFCANCEL,''DD'')) -' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFVCMTO,''DD'')) EDAD,CXC.CCNODOC, CXC.CCNLETBCO, CXC.CCFEMIS, CXC.CCFVCMTO, CXC.CCTCAMPR, ' +
            'CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
            'CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CCSERIE, CXC.CIAID, CXC.DOCID, ' +
            'MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
            'SIT.SITUAABR SITUADES, CXC.CCMTOORI, CLI.CLIEDES , CXC.TMONID , CXC.CCESTADO , ' +
            DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0) AS COL_2,' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0) AS COL_3, ' +

         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC END) AS MTOLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT END) AS MTOEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCSALLOC END) AS SALLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCSALEXT END) AS SALEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC END) AS PAGLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT END) AS PAGEXT ' +

         'FROM CXC301 CXC,TGE103 MON,TGE110 DOC,CXC105 UBI,CXC104 SIT,TGE204 CLI,TGE180 COM ' +
            ' WHERE CXC.TMONID=MON.TMONID(+) ' +
            ' AND (CXC.DOCID=DOC.DOCID(+) AND DOC.DOCMOD(+) = ''CXC'' AND (' +
            DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''XX'' OR ' +
            DMCXC.wReplacCeros + '(DOC.DOCTIPREG,''XX'') <> ''CH'') AND DOC.DOC_FREG = ''P'') ' +
            ' AND (CXC.UBIID=UBI.UBICAID(+)) ' +
            ' AND (CXC.SITID=SIT.SITUAID(+)) ' +
            'AND (CXC.CIAID=COM.CIAID(+) AND CXC.TVTAID = COM.SCOMERID(+) AND COM.CCOMERID(+)=CXC.CCOMERID) ';
      End;
End;

Procedure TFEstCxCli.cSQLLetras;
Begin
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQLLetras := 'SELECT CXC.TCANJEID,CXC.CCCANJE,CXC.CCFLAGPROT,CXC.CCFCANCEL FECHA, COM.DCCOMABR,DAYS(CXC.CCFCANCEL)-DAYS(CXC.CCFVCMTO) EDAD,CXC.CCNODOC, CXC.CCNLETBCO, CXC.CCFEMIS, CXC.CCFVCMTO, CXC.CCTCAMPR, ' +
         'CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
         'CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CCSERIE, CXC.CIAID, CXC.DOCID, ' +
         'MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
         'SIT.SITUAABR SITUADES, CXC.CCMTOORI, CLI.CLIEDES , CXC.TMONID , CXC.CCESTADO , ' +
         DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0) AS COL_2,' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0) AS COL_3, ' +

      '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC ELSE 0 END) AS MTOLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT ELSE 0 END) AS MTOEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN ' + DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGLOC,0) ELSE 0 END) AS SALLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN ' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0)-' + DMCXC.wReplacCeros + '(CXC.CCPAGEXT,0) ELSE 0 END) AS SALEXT, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC ELSE 0 END) AS PAGLOC, ' +
         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT ELSE 0 END) AS PAGEXT ' +

      ' FROM CXC301 CXC ' +
         ' INNER JOIN TGE103 MON ON (CXC.TMONID=MON.TMONID) ' +
         ' LEFT JOIN TGE180 COM ON (CXC.CIAID=COM.CIAID AND CXC.TVTAID=COM.SCOMERID AND COM.CCOMERID=CXC.CCOMERID) ' +
         ' INNER JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'' ' +
         ' AND DOC.DOC_FREG=''L'')' +
         ' LEFT JOIN CXC105 UBI ON (CXC.UBIID=UBI.UBICAID) ' +
         ' LEFT JOIN CXC104 SIT ON (CXC.SITID=SIT.SITUAID), ' +
         ' TGE204 CLI ';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         sSQLLetras := 'SELECT CXC.TCANJEID,CXC.CCCANJE,CXC.CCFLAGPROT,CXC.CCFCANCEL FECHA, COM.DCCOMABR,' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFCANCEL,''DD'')) -' +
            ' TO_NUMBER(TO_CHAR(CXC.CCFVCMTO,''DD'')) EDAD,CXC.CCNODOC, CXC.CCNLETBCO, CXC.CCFEMIS, CXC.CCFVCMTO, CXC.CCTCAMPR, ' +
            'CXC.CLIEID, CXC.CCMTOLOC, CXC.CCPAGLOC, CXC.CCSALLOC, CXC.CCMTOEXT, ' +
            'CXC.CCPAGEXT, CXC.CCSALEXT, CXC.CCSERIE, CXC.CIAID, CXC.DOCID, ' +
            'MON.TMON_LOC, MON.TMONABR, DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, ' +
            'SIT.SITUAABR SITUADES, CXC.CCMTOORI, CLI.CLIEDES , CXC.TMONID , CXC.CCESTADO , ' +
            DMCXC.wReplacCeros + '(CXC.CCMTOLOC,0) AS COL_2,' + DMCXC.wReplacCeros + '(CXC.CCMTOEXT,0) AS COL_3, ' +

         '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCMTOLOC END ) MTOLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCMTOEXT END ) MTOEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCSALLOC END ) SALLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCSALEXT END ) SALEXT, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CXC.CCPAGLOC END ) PAGLOC, ' +
            '(CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CXC.CCPAGEXT END ) PAGEXT ' +

         'FROM CXC301 CXC,TGE103 MON,TGE110 DOC,CXC105 UBI,CXC104 SIT,TGE204 CLI,TGE180 COM ' +
            ' WHERE (CXC.TMONID=MON.TMONID(+)) ' +
            ' AND (CXC.DOCID=DOC.DOCID(+) AND DOC.DOCMOD = ''CXC'') ' +
            ' AND (CXC.UBIID=UBI.UBICAID(+)) ' +
            ' AND (CXC.SITID=SIT.SITUAID(+)) ' +
            'AND (CXC.CIAID=COM.CIAID(+) AND CXC.TVTAID = COM.SCOMERID(+) AND COM.CCOMERID(+)=CXC.CCOMERID) ';
      End;
End;

Procedure TFEstCxCli.cFooterTodos(dbg: TwwDBGrid; cds: TwwClientDataSet);
Var
   MlocS, MExtS, TLocS, TExtS, MlocR, MExtR, TLocR, TExtR: Double;
Begin
{  MlocS := OperClientDataSet( cds , 'SUM(MTOLOC)', 'DOCRESTA<>''S''');
  MExtS := OperClientDataSet( cds , 'SUM(MTOEXT)', 'DOCRESTA<>''S''');
  TlocS := OperClientDataSet( cds , 'SUM(SALLOC)', 'DOCRESTA<>''S''');
  TExtS := OperClientDataSet( cds , 'SUM(SALEXT)', 'DOCRESTA<>''S''');

  MlocR := OperClientDataSet( cds , 'SUM(MTOLOC)', 'DOCRESTA=''S''');
  MExtR := OperClientDataSet( cds , 'SUM(MTOEXT)', 'DOCRESTA=''S''');
  TlocR := OperClientDataSet( cds , 'SUM(SALLOC)', 'DOCRESTA=''S''');
  TExtR := OperClientDataSet( cds , 'SUM(SALEXT)', 'DOCRESTA=''S''');
 }
   MlocS := OperClientDataSet(cds, 'SUM(MTOLOC)', '');
   MExtS := OperClientDataSet(cds, 'SUM(MTOEXT)', '');
   TlocS := OperClientDataSet(cds, 'SUM(SALLOC)', '');
   TExtS := OperClientDataSet(cds, 'SUM(SALEXT)', '');

   MlocR := OperClientDataSet(cds, 'SUM(MTOLOC)', '');
   MExtR := OperClientDataSet(cds, 'SUM(MTOEXT)', '');
   TlocR := OperClientDataSet(cds, 'SUM(SALLOC)', '');
   TExtR := OperClientDataSet(cds, 'SUM(SALEXT)', '');

{  dbg.ColumnByName('MTOLOC').FooterValue  :=FloatToStrF(MLocS-MLocR, ffNumber, 15, 2);
  dbg.ColumnByName('MTOEXT').FooterValue  :=FloatToStrF(MExtS-MExtR, ffNumber, 15, 2);
  dbg.ColumnByName('SALLOC').FooterValue  :=FloatToStrF(TLocS-TLocR, ffNumber, 15, 2);
  dbg.ColumnByName('SALEXT').FooterValue  :=FloatToStrF(TExtS-TExtR, ffNumber, 15, 2);
 }

   dbg.ColumnByName('MTOLOC').FooterValue := FloatToStrF(MLocS, ffNumber, 15, 2);
   dbg.ColumnByName('MTOEXT').FooterValue := FloatToStrF(MExtS, ffNumber, 15, 2);
   dbg.ColumnByName('SALLOC').FooterValue := FloatToStrF(TLocS, ffNumber, 15, 2);
   dbg.ColumnByName('SALEXT').FooterValue := FloatToStrF(TExtS, ffNumber, 15, 2);
   dbg.FooterCellColor := clInfoBk;
   dbg.RedrawGrid;
End;

Procedure TFEstCxCli.AceptarCompleto;
Var
   c, xSQL, xSQLAdendo, xSQLLetra, xSQLNCredito, xSQLCheque, xSQLCheque1, xSQLChequeCXC301, xSQLAnticipo: String;
   xCondicion, sConDoc,
      xCondicionLetras: String;
   xSQLFinal, xLetras: String;
   sConAdendo, sConNCreditos, sNCredito, sConChequesCXC301, sConLetras, sConCheques, sConCheques1, sConAnticipos, sSitIni, sWhere, sCheque, sAnticipo: String;
Begin
   Screen.Cursor := crHourGlass;
   If dtpINI.Date > dtpFIN.Date Then
   Begin
      Application.MessageBox('La fecha inicial no debe ser mayor que la fecha final',
         'Error en fechas', MB_ICONERROR + MB_OK);
      dtpINI.SetFocus;
      Exit;
   End;

   sNCredito := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID');
   sCheque := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''H''', 'DOCID');
   sAnticipo := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'DOCID');
   sSitIni := DMCXC.BuscaQry2('dspTGE', 'CXC104', 'SITUAID', 'SITUAFLAG=''1''', 'SITUAID'); // EQUIVALE AL 00
   xLetras := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');

//   PSaldoAnt;

   If StrToFloat(dbeTCAMB.Text) <= 0 Then
      stcam := '1'
   Else
      stcam := dbeTCAMB.Text;

   xSQL := '';
   xSQLLetra := '';
   xSQLAdendo := '';
   sConAdendo := '';
   sConLetras := '';
   sConCheques := '';
   sConCheques1 := '';
   sConChequesCXC301 := '';
   sConAnticipos := '';
   sConNCreditos := '';

   Case rgEST.ItemIndex Of
      0:
         Begin //TODOS
         //** 25/10/2002 - PJSV
            sConDoc := ' AND (( ' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
            sConLetras := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
            sConCheques := '';
            sConCheques1 := '';
            sConChequesCXC301 := '';
            sConAnticipos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
            sConNCreditos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
         //**
         End;
      1:
         Begin //PENDIENTES
            sConDoc := ' AND CCESTADO=''P'' ';
            sConLetras := ' AND CCESTADO=''P'' ';
            sConCheques := ' AND (CAJA.CHQ_ESTADO=''PEND.COB'' OR CAJA.CHQ_ESTADO IS NULL)';
            sConCheques1 := ' AND (A.CHQ_ESTADO=''PEND.COB'' OR A.CHQ_ESTADO IS NULL)';
            sConChequesCXC301 := ' AND CCESTADO=''P'' ';
            sConAnticipos := ' AND CCESTADO=''P'' ';
            sConNCreditos := ' AND CCESTADO=''P'' ';
         End;
      2:
         Begin //CANCELADOS
            sConDoc := ' AND CCESTADO=''C'' ';
            sConLetras := 'AND CCESTADO=''C'' ';
            sConCheques := ' AND (CAJA.CHQ_ESTADO=''COBRADO'')';
            sConCheques1 := ' AND (A.CHQ_ESTADO=''COBRADO'')';
            sConChequesCXC301 := ' AND CCESTADO=''C'' ';
            sConAnticipos := ' AND CCESTADO=''C'' ';
            sConNCreditos := ' AND CCESTADO=''C'' ';
         End;
      3:
         Begin // PENDIENTES DE ACEPTACION
          //** 25/10/2002 - PJSV
            sConDoc := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
            sConLetras := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') =''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
            sConCheques := ' AND (CAJA.CHQ_ESTADO=''XX'')';
            sConCheques1 := ' AND (A.CHQ_ESTADO=''XX'')';
            sConChequesCXC301 := '';
            sConAnticipos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
            sConNCreditos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
          //**
         End;
   End;
   sConAdendo := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') =''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';

   xSQL := xSQL + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConDoc;
   xSQLLetra := xSQLLetra + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConLetras;
   xSQLAdendo := xSQLAdendo + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConAdendo;
   xSQLCheque := xSQLCheque + ' AND CAJA.CHQ_FECEMI < CAJA.CHQ_FECVCM  ' + sConCheques;
   xSQLCheque1 := xSQLCheque1 + ' AND A.CHQ_FECEMI < A.CHQ_FECVCM ' + sConCheques1;
   xSQLChequeCXC301 := xSQLChequeCXC301 + sConChequesCXC301; //+ ' AND (CXC.CCFEMIS<='+DMCXC.wRepFuncDate+''''+FormatDateTime(DMCXC.wFormatFecha,dtpFIN.Date)+''')) '

   xSQLAnticipo := xSQLAnticipo + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConAnticipos;
   xSQLNCredito := xSQLNCredito + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConNCreditos;

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQL;
      xSQLLetra := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLLetra;
      xSQLAdendo := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAdendo;
      xSQLCheque := ' WHERE CAJA.CLIEID=''' + Cliente + '''' + xSQLCheque;
      xSQLCheque1 := ' WHERE A.CLIEID=''' + Cliente + '''' + xSQLCheque1;
      xSQLChequeCXC301 := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLChequeCXC301;
      xSQLAnticipo := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAnticipo;
      xSQLNCredito := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLNCredito;
   End
   Else
   Begin
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQL;
         xSQLLetra := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLLetra;
         xSQLAdendo := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAdendo;
         xSQLCheque := ' AND CAJA.CLIEID=''' + Cliente + '''' + xSQLCheque;
         xSQLCheque1 := ' AND A.CLIEID=''' + Cliente + '''' + xSQLCheque1;
         xSQLChequeCXC301 := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLChequeCXC301;
         xSQLAnticipo := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAnticipo;
         xSQLNCredito := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLNCredito;
      End;
   End;

   ////////////////////////////////////// TODOS //////////////////////////
   cSQLTodos;
   xSQLFinal := sSQLTodos + xSQL;
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
      xSQLFinal := xSQLFinal + ' UNION ALL ' +
         ' SELECT '''' CCFLAGPROT,'''' CCNLETBCO, CHQ_FECCAN FECHA, 1 POS, DAYS(CHQ_FECCAN)-DAYS(CHQ_FECVCM) EDAD, ''000'' CCSERIE,CAJA.TXNOCHQ CCNODOC, CAJA.CHQ_FECEMI CCFEMIS, ' +
         ' CAJA.CHQ_FECVCM CCFVCMTO,CAJA.CLIEID,TXMTOLOC CCMTOLOC,0 CCPAGLOC, TXMTOLOC CCSALLOC, ' +
         ' TXMTOEXT CCMTOEXT,0 CCPAGEXT, TXMTOEXT CCSALEXT,CAJA.CIAID,' + QuotedStr(sCheque) + ' DOCID, MON.TMON_LOC, MON.TMONABR, ' +
         ' DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, CAJA.CHQ_ESTADO SITUADES, TXMTOORI CCMTOORI, ' +
         ' CAJA.TMONID,CAJA.CHQ_ESTADO CCESTADO,TXMTOLOC MTOLOC, TXMTOEXT MTOEXT, TXMTOLOC SALLOC, TXMTOEXT SALEXT, ' +
         ' 0 PAGLOC, 0 PAGEXT, 0 MTODOLAR, 0 PAGDOLAR, 0 SALDOLAR FROM CAJA305 CAJA ' +
         ' INNER JOIN TGE103 MON ON (CAJA.TMONID=MON.TMONID) ' +
         ' INNER JOIN TGE110 DOC ON (DOC.DOCID=' + QuotedStr(sCheque) + ' AND DOC.DOCMOD = ''CXC'') ' +
         ' LEFT JOIN CXC105 UBI ON (CAJA.BANCOID=UBI.UBICAID) ' + xSQLCheque
   Else
      xSQLFinal := xSQLFinal + ' UNION ALL ' +
         ' SELECT CHQ_FECCAN FECHA, 1 POS, ' +
         ' TO_NUMBER(TO_CHAR(CHQ_FECCAN,''DD'')) -' +
         ' TO_NUMBER(TO_CHAR(CHQ_FECVCM,''DD'')) EDAD' +
         ', ''000'' CCSERIE,CAJA.TXNOCHQ CCNODOC, CAJA.CHQ_FECEMI CCFEMIS, ' +
         ' CAJA.CHQ_FECVCM CCFVCMTO,CAJA.CLIEID,TXMTOLOC CCMTOLOC,0 CCPAGLOC, TXMTOLOC CCSALLOC, ' +
         ' TXMTOEXT CCMTOEXT,0 CCPAGEXT, TXMTOEXT CCSALEXT,CAJA.CIAID,' + QuotedStr(sCheque) + ' DOCID, MON.TMON_LOC, MON.TMONABR, ' +
         ' DOC.DOCABR, DOC.DOCRESTA, UBI.UBICAABR UBICADES, CAJA.CHQ_ESTADO SITUADES, TXMTOORI CCMTOORI, ' +
         ' CAJA.TMONID,CAJA.CHQ_ESTADO CCESTADO,TXMTOLOC MTOLOC, TXMTOEXT MTOEXT, TXMTOLOC SALLOC, TXMTOEXT SALEXT, ' +
         ' 0 PAGLOC, 0 PAGEXT, 0 MTODOLAR, 0 PAGDOLAR, 0 SALDOLAR FROM CAJA305 CAJA,TGE103 MON,TGE110 DOC,CXC105 UBI ' +
         ' WHERE CAJA.TMONID=MON.TMONID(+) AND ' +
         ' DOC.DOCID(+)=' + QuotedStr(sCheque) +
         ' AND DOC.DOCMOD(+) = ''CXC'' ' +
         ' AND CAJA.BANCOID=UBI.UBICAID(+) ' + xSQLCheque;

   dbgTodos.DataSource := DMCXC.dsReporte;
   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.DataRequest(xSQLFinal);

   DMCXC.cdsReporte.Open;
   DMCXC.cdsReporte.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';

   TNumericField(DMCXC.cdsReporte.FieldByName('MTOLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('PAGLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('SALLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('MTOEXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('PAGEXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('SALEXT')).DisplayFormat := '###,###,##0.00';

   dbgTodos.Selected.Clear;
   dbgTodos.Selected.Add('POS'#9'3'#9'Pos'#9'F');
   dbgTodos.Selected.Add('DOCABR'#9'5'#9'Tipo'#9'F');
   dbgTodos.Selected.Add('CCSERIE'#9'4'#9'Serie'#9'F');
   dbgTodos.Selected.Add('CCNODOC'#9'11'#9'Número'#9'F');
   dbgTodos.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgTodos.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vencimiento.'#9'F');
   dbgTodos.Selected.Add('FECHA'#9'10'#9'Cancelación'#9'F');
   dbgTodos.Selected.Add('EDAD'#9'4'#9'Edad'#9'F');
   dbgTodos.Selected.Add('TMONABR'#9'4'#9'Moneda.'#9'F');
   dbgTodos.Selected.Add('MTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgTodos.Selected.Add('PAGEXT'#9'10'#9'Pago (ME)'#9'F');
   dbgTodos.Selected.Add('SALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgTodos.Selected.Add('UBICADES'#9'15'#9'Ubicación.'#9'F');
   dbgTodos.Selected.Add('SITUADES'#9'15'#9'Situación'#9'F');
   dbgTodos.Selected.Add('MTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgTodos.Selected.Add('PAGLOC'#9'10'#9'Pago (MN)'#9'F');
   dbgTodos.Selected.Add('SALLOC'#9'10'#9'Saldo (MN)'#9'F');

   dbgTodos.RedrawGrid;

   DMCXC.cdsReporte.DisableControls;
   DMCXC.cdsReporte.First;
   While Not DMCXC.cdsReporte.EOF Do
   Begin
      DMCXC.cdsReporte.Edit;
      DMCXC.cdsReporte.FieldByName('POS').AsString := IntToStr(DMCXC.cdsReporte.RecNo);
      DMCXC.cdsReporte.Post;
      DMCXC.cdsReporte.Next;
   End;
   DMCXC.cdsReporte.EnableControls;

    ////////////////////////////////// DOCUMENTOS /////////////////////////////////
   cSQLDocs;
   xSQLFinal := sSQLDocs + xSQL +
      ' AND (CLI.CLIEID=CXC.CLIEID and CLI.CLAUXID=CXC.CLAUXID)';
   dbgEst2.DataSource := DMCXC.dsQRY2;
   DMCXC.cdsQRY2.Close;
   DMCXC.cdsQRY2.ProviderName := 'dspTGE';
   DMCXC.cdsQRY2.DataRequest(xSQLFinal);
   DMCXC.cdsQRY2.Open;

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      C := ' SELECT ' +
         ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
         ' A.DCCMTOORI, A.CCFCANJE, ' +
         ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
         ' FROM ' +
         ' CXC305 A ' +
         ' LEFT JOIN TGE103 E  ON (E.TMONID=A.TMONID)' +
         ' LEFT JOIN TGE110 C  ON C.DOCMOD=''CXC'' and C.DOCID=A.DOCID2 ' +
         ' INNER JOIN TGE110 B ON B.DOCMOD=''CXC'' and B.DOCID=A.DOCID  ' +
         ' AND B.DOCTIPREG<>''NC''' + ' AND B.DOC_FREG<>''H''' + ' AND B.DOC_FREG<>''A''' +
         ' AND B.DOC_FREG<>''L''' +
         ' WHERE ' +
         ' A.CLIEID = ' + QuotedStr(dblcCLIE.text);
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         C := ' SELECT ' +
            ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
            ' A.DCCMTOORI, A.CCFCANJE, ' +
            ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
            ' FROM ' +
            ' CXC305 A,TGE103 E,TGE110 C,TGE110 B ' +
            ' WHERE ' +
            ' A.CLIEID = ' + QuotedStr(dblcCLIE.text) + ' AND ' +
            ' E.TMONID(+)=A.TMONID AND C.DOCMOD(+)=''CXC'' and C.DOCID(+)=A.DOCID2 ' +
            ' AND B.DOCMOD=''CXC'' and B.DOCID=A.DOCID  ' +
            ' AND B.DOCTIPREG<>''NC''' + ' AND B.DOC_FREG<>''H''' + ' AND B.DOC_FREG<>''A''' +
            ' AND B.DOC_FREG<>''L''';
      End;

   DMCXC.cdsQry8.Close;
   DMCXC.cdsQry8.DataRequest(c);
   DMCXC.cdsQry8.Open;
   If DMCXC.cdsQry8.IndexFieldNames <> 'CIAID;DOCID;CCSERIE;CCNODOC' Then
      DMCXC.cdsQry8.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsQry8.MasterSource := DMCXC.dsQry2;
   DMCXC.cdsQry8.MasterFields := 'CIAID;DOCID;CCSERIE;CCNODOC';

    //////////////////////////// LETRAS //////////////////////////////////
   cGRID(dbgEst3);
   cSQLLetras;
   xSQLFinal := sSQLLetras + xSQLLetra +
      ' AND (CLI.CLIEID=CXC.CLIEID and CLI.CLAUXID=CXC.CLAUXID)' +
      ' AND CXC.SITID>=' + QuotedStr(sSitIni) + ' AND CXC.DOCID=' + quotedstr(xLetras);
   DMCXC.cdsQRY4.Close;
   DMCXC.cdsQRY4.ProviderName := 'dspTGE';
   DMCXC.cdsQRY4.DataRequest(xSQLFinal);
   DMCXC.cdsQRY4.Open;

   xSQLFinal := sSQLLetras + xSQLAdendo +
      ' AND (CLI.CLIEID=CXC.CLIEID and CLI.CLAUXID=CXC.CLAUXID)' +
      ' AND CXC.SITID>=' + QuotedStr(sSitIni) + ' AND CXC.DOCID=' + quotedstr(xLetras);
   DMCXC.cdsQRY11.Close;
   DMCXC.cdsQRY11.ProviderName := 'dspTGE';
   DMCXC.cdsQRY11.DataRequest(xSQLFinal);
   DMCXC.cdsQRY11.Open;
   If rgEST.ItemIndex = 3 Then
      DMCXC.cdsQry11.EmptyDataSet;

                                        //YA
// PAGOS DE LETRAS
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      c := ' SELECT ' +
         ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
         ' A.DCCMTOORI, A.CCFCANJE, ' +
         ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
         ' FROM ' +
         ' CXC305 A ' +
         ' LEFT JOIN TGE103 E ON (E.TMONID=A.TMONID)' +
         ' LEFT JOIN TGE110 C ON C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC'' ' +
         ' INNER  JOIN TGE110 B ON B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' +
         ' AND B.DOC_FREG=''L''' +
         ' WHERE ' +
         ' A.CLIEID = ' + QuotedStr(dblcCLIE.text);
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         c := ' SELECT ' +
            ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
            ' A.DCCMTOORI, A.CCFCANJE, ' +
            ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
            ' FROM ' +
            ' CXC305 A,TGE103 E,TGE110 C,TGE110 B ' +
            ' WHERE ' +
            ' A.CLIEID = ' + QuotedStr(dblcCLIE.text) + ' AND ' +
            ' E.TMONID=A.TMONID AND C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC'' ' +
            ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' +
            ' AND B.DOC_FREG=''L''';
      End;
   DMCXC.cdsQry9.Close;
   DMCXC.cdsQry9.DataRequest(c);
   DMCXC.cdsQry9.Open;
   If DMCXC.cdsQry9.IndexFieldNames <> 'CIAID;DOCID;CCSERIE;CCNODOC' Then
      DMCXC.cdsQry9.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsQry9.MasterSource := DMCXC.dsQry4;
   DMCXC.cdsQry9.MasterFields := 'CIAID;DOCID;CCSERIE;CCNODOC';

  //QUERY DE CHEQUES DEVUELTOS   DMCXC.cdsQry7
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT clieid,BANCOABR,TMONABR,CCNODOC,CCFEMIS,CCFVCMTO,CCFCANCEL FECHA,CXC.TMONID,MOTDEVCHQDES,' +
         ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
         ' CXC.CCSERIE,CXC.DOCID,CXC.CIAID, DOC.DOCABR, MON.TMON_LOC, CXC.BANCOID,TGE105.BANCONOM,MON.TMONABR ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN CAJA104 ON CAJA104.MOTDEVCHQ=CXC.MOTDEVCHQ ' +
         ' LEFT JOIN TGE105 ON CXC.BANCOID=TGE105.BANCOID ' + //sConChequesCXC301+
         ' LEFT JOIN TGE103 MON ON MON.TMONID=CXC.TMONID ' +
         ' LEFT JOIN TGE110 DOC ON (DOC.DOCMOD=''CXC'' and CXC.DOCID=DOC.DOCID ) ' +
         xSQLChequeCXC301 + 'AND CXC.DOCID=' + QuotedStr(sCheque) +
         ' AND CXC.MOTDEVCHQ is not null';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT CLIEID,BANCOABR,TMONABR,CCNODOC,CCFEMIS,CCFVCMTO,CCFCANCEL FECHA,CXC.TMONID,MOTDEVCHQDES,' +
            ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
            ' CXC.CCSERIE,CXC.DOCID,CXC.CIAID, DOC.DOCABR, MON.TMON_LOC, CXC.BANCOID,TGE105.BANCONOM,MON.TMONABR ' +
            ' FROM CXC301 CXC, CAJA104, TGE105,TGE103 MON, TGE110 DOC ' +
            ' WHERE (CAJA104.MOTDEVCHQ(+)=CXC.MOTDEVCHQ) AND ( DOC.DOCMOD(+)=''CXC'' and DOC.DOCID(+)=CXC.DOCID)  AND CXC.TMONID=MON.TMONID(+) ' +
            ' AND CXC.BANCOID=TGE105.BANCOID(+) ' + xSQLChequeCXC301 + //sConChequesCXC301+
            ' AND CXC.DOCID=' + QuotedStr(sCheque) + ' AND CXC.MOTDEVCHQ is not null';
      End;
   DMCXC.cdsQry7.Close;
   dbgEst4.DataSource := DMCXC.dsQRY7;
   DMCXC.cdsQry7.DataRequest(xSQL);
   DMCXC.cdsQry7.Open;

// PAGOS DE CHEQUES
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      c := ' SELECT ' +
         ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
         ' A.DCCMTOORI, A.CCFCANJE, ' +
         ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
         ' FROM ' +
         ' CXC305 A ' +
         ' LEFT JOIN TGE103 E ON (E.TMONID=A.TMONID)' +
         ' LEFT JOIN TGE110 C ON C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC'' ' +
         ' INNER  JOIN TGE110 B ON B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' +
         ' AND B.DOC_FREG=''H''' +
         ' WHERE ' +
         ' A.CLIEID = ' + QuotedStr(dblcCLIE.text);
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         c := ' SELECT ' +
            ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
            ' A.DCCMTOORI, A.CCFCANJE, ' +
            ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
            ' FROM ' +
            ' CXC305 A,TGE103 E,TGE110 C,TGE110 B ' +
            ' WHERE ' +
            ' A.CLIEID = ' + QuotedStr(dblcCLIE.text) + ' AND ' +
            ' E.TMONID(+)=A.TMONID AND C.DOCID(+)=A.DOCID2 AND C.DOCMOD(+)=''CXC'' ' +
            ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' AND B.DOC_FREG=''H''';
      End;
   DMCXC.cdsQry10.Close;
   DMCXC.cdsQry10.DataRequest(c);
   DMCXC.cdsQry10.Open;
   If DMCXC.cdsQry10.IndexFieldNames <> 'CIAID;DOCID;CCSERIE;CCNODOC' Then
      DMCXC.cdsQry10.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
   DMCXC.cdsQry10.MasterSource := DMCXC.dsQry7;
   DMCXC.cdsQry10.MasterFields := 'CIAID;DOCID;CCSERIE;CCNODOC';

   dbgEst4.Selected.Clear;
   dbgEst4.Selected.Add('CCNODOC'#9'15'#9'Número~Cheque'#9'F');
   dbgEst4.Selected.Add('TCANJEID'#9'3'#9'Tipo~Cheque'#9'F');
   dbgEst4.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst4.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vcto.'#9'F');
   dbgEst4.Selected.Add('FECHA'#9'10'#9'Cancelación'#9'F');
   dbgEst4.Selected.Add('TMONABR'#9'3'#9'Moneda.'#9'F');
   dbgEst4.Selected.Add('CCMTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst4.Selected.Add('CCSALLOC'#9'10'#9'Saldo (MN)'#9'F');
   dbgEst4.Selected.Add('CCMTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst4.Selected.Add('CCSALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgEst4.Selected.Add('BANCONOM'#9'15'#9'Banco.'#9'F');
   dbgEst4.RedrawGrid;

  //QUERY DE ANTICIPOS    DMCXC.cdsQry5
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT CCPAGEXT,CCPAGLOC,CIAID,CLIEID,CLIEDES,CLIERUC,CXC.DOCID,CCSERIE,CCNODOC,CXC.CCFEMIS,CXC.TMONID,TGE103.TMONDES,TGE103.TMONABR,TGE103.TMON_LOC,TGE110.DOCABR, ' +
         ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGLOC ELSE 0 END CCPAGEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
         ' CXC.BANCOID,TGE105.BANCONOM,TGE105.BANCOABR,CXC.CCNLETBCO ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN TGE110 ON TGE110.DOCMOD=''CXC'' AND TGE110.DOCID=CXC.DOCID ' +
         ' LEFT JOIN TGE103 ON TGE103.TMONID=CXC.TMONID ' +
         ' LEFT JOIN TGE105 ON CXC.BANCOID=TGE105.BANCOID ' + xSQLAnticipo + sConAnticipos +
         ' AND CXC.DOCID=' + QuotedStr(sAnticipo);
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT CCPAGEXT,CCPAGLOC,CIAID,CLIEID,CLIEDES,CLIERUC,CXC.DOCID,CCSERIE,CCNODOC,CXC.CCFEMIS,CXC.TMONID,TGE103.TMONDES,TGE103.TMONABR,TGE103.TMON_LOC,TGE110.DOCABR, ' +
            ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGLOC ELSE 0 END CCPAGEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
            ' CXC.BANCOID,TGE105.BANCONOM,TGE105.BANCOABR,CXC.CCNLETBCO ' +
            ' FROM CXC301 CXC,TGE105,TGE103,TGE110 ' +
            ' WHERE CXC.DOCID=TGE110.DOCID(+) AND TGE110.DOCMOD=''CXC'' AND CXC.BANCOID=TGE105.BANCOID(+) ' + xSQLAnticipo + sConAnticipos + //+xSQLAnticipo+
            ' AND CXC.DOCID=' + QuotedStr(sAnticipo) + ' AND TGE103.TMONID=CXC.TMONID';
      End;

   DMCXC.cdsQry5.Close;
   dbgEst5.DataSource := DMCXC.dsQRY5;
   DMCXC.cdsQry5.DataRequest(xSQL);
   DMCXC.cdsQry5.Open;

   dbgEst5.Selected.Clear;
   dbgEst5.Selected.Add('CCNODOC'#9'15'#9'Anticipo'#9'F');
   dbgEst5.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst5.Selected.Add('TMONID'#9'3'#9'Moneda.'#9'F');
   dbgEst5.Selected.Add('CCMTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst5.Selected.Add('CCSALLOC'#9'10'#9'Saldo (MN)'#9'F');
   dbgEst5.Selected.Add('CCMTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst5.Selected.Add('CCSALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgEst5.Selected.Add('BANCONOM'#9'15'#9'Banco.'#9'F');
   dbgEst5.Selected.Add('CCNLETBCO'#9'15'#9'Liquidacion~Cobranza'#9'F');
   dbgEst5.RedrawGrid;

   //QUERY DE NOTAS DE CREDITO    DMCXC.cdsQry6
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT DOCABR,TMONABR,CLIEID,CLIEDES,CLIERUC,CXC.CCSERIE,CCNODOC,CCFEMIS,CXC.TMONID, ' +
         ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
         ' CXC.BANCOID,TGE105.BANCONOM ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'') ' +
         ' LEFT JOIN TGE103 ON TGE103.TMONID=CXC.TMONID ' +
         ' LEFT JOIN TGE105 ON CXC.BANCOID=TGE105.BANCOID ' + xSQLNCredito + sConNCreditos +
         ' AND CXC.DOCID=' + QuotedStr(sNCredito);
   End //AND CXC.CCPAGORI<=0
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT DOCABR,TMONABR,CLIEID,CLIEDES,CLIERUC,CXC.CCSERIE,CCNODOC,CCFEMIS,CXC.TMONID, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
            ' CXC.BANCOID,TGE105.BANCONOM ' +
            ' FROM CXC301 CXC,TGE105, TGE103,TGE110 DOC' +
            ' WHERE CXC.BANCOID=TGE105.BANCOID(+) ' + xSQLNCredito + sConNCreditos +
            ' AND CXC.DOCID=' + QuotedStr(sNCredito) + ' AND TGE103.TMONID=CXC.TMONID' +
            ' AND CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC''';
      End; //AND CXC.CCPAGORI<=0

   dbgEst6.Selected.Clear;
   dbgEst6.Selected.Add('CCSERIE'#9'10'#9'Serie'#9'F');
   dbgEst6.Selected.Add('CCNODOC'#9'15'#9'Número'#9'F');
   dbgEst6.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst6.Selected.Add('TMONID'#9'3'#9'Moneda.'#9'F');
   dbgEst6.Selected.Add('CCMTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst6.Selected.Add('CCPAGLOC'#9'10'#9'Monto~Aplicado(MN)'#9'F');
   dbgEst6.Selected.Add('CCSALLOC'#9'10'#9'Saldo (MN)'#9'F');
   dbgEst6.Selected.Add('CCMTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst6.Selected.Add('CCPAGEXT'#9'10'#9'Monto~Aplicado(ME)'#9'F');
   dbgEst6.Selected.Add('CCSALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgEst6.RedrawGrid;

   DMCXC.cdsQry6.Close;
   dbgEst6.DataSource := DMCXC.dsQRY6;
   DMCXC.cdsQry6.DataRequest(xSQL);
   DMCXC.cdsQry6.Open;

   ProcessSaldo(DMCXC.cdsQRY2);
   ProcessSaldo(DMCXC.cdsQRY4);

   cGRID(dbgEst2);

   cFormat(DMCXC.cdsQRY2);
   cFormat(DMCXC.cdsQRY4);

   cFooter(dbgEst2, DMCXC.cdsQRY2);
   cFooter(dbgEst3, DMCXC.cdsQRY4);
   cFooterCheque(dbgEst4, DMCXC.cdsQRY7);
   cFooterAnticipo(dbgEst5, DMCXC.cdsQRY5);
   cFooterNCredito(dbgEst6, DMCXC.cdsQRY6);
   cFooterTodos(dbgTodos, DMCXC.cdsReporte);

   Totales;
   Screen.Cursor := crDefault;
End;

Procedure TFEstCxCli.AceptarParcial;
Var
   c, xSQL, xSQLAdendo, xSQLLetra, xSQLNCredito, xSQLCheque, xSQLCheque1, xSQLChequeCXC301, xSQLAnticipo: String;
   xCondicion, sConDoc,
      xCondicionLetras: String;
   xSQLFinal, xLetras: String;
   sConAdendo, sConNCreditos, sNCredito, sConChequesCXC301, sConLetras, sConCheques, sConCheques1, sConAnticipos, sSitIni, sWhere, sCheque, sAnticipo: String;
Begin
   Screen.Cursor := crHourGlass;
   If dtpINI.Date > dtpFIN.Date Then
   Begin
      Application.MessageBox('La fecha inicial no debe ser mayor que la fecha final',
         'Error en fechas', MB_ICONERROR + MB_OK);
      dtpINI.SetFocus;
      Exit;
   End;

   sNCredito := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOCTIPREG=''NC''', 'DOCID');
   xLetras := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''L''', 'DOCID');
   sCheque := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''H''', 'DOCID');
   sAnticipo := DMCXC.BuscaQry2('dspTGE', 'TGE110', 'DOCID', 'DOCMOD=''CXC'' AND DOC_FREG=''A''', 'DOCID');
   sSitIni := DMCXC.BuscaQry2('dspTGE', 'CXC104', 'SITUAID', 'SITUAFLAG=''1''', 'SITUAID'); // EQUIVALE AL 00

   If StrToFloat(dbeTCAMB.Text) <= 0 Then
      stcam := '1'
   Else
      stcam := dbeTCAMB.Text;

   xSQL := '';
   xSQLLetra := '';
   xSQLAdendo := '';
   sConAdendo := '';
   sConLetras := '';
   sConCheques := '';
   sConCheques1 := '';
   sConChequesCXC301 := '';
   sConAnticipos := '';
   sConNCreditos := '';

   Case rgEST.ItemIndex Of
      0:
         Begin //TODOS
         //** 25/10/2002 - PJSV
            sConDoc := ' AND (( ' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
            sConLetras := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
            sConCheques := '';
            sConCheques1 := '';
            sConChequesCXC301 := '';
            sConAnticipos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
            sConNCreditos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <>''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') <> ''I''))';
         //**
         End;
      1:
         Begin //PENDIENTES
            sConDoc := ' AND CCESTADO=''P'' ';
            sConLetras := ' AND CCESTADO=''P'' ';
            sConCheques := ' AND (CAJA.CHQ_ESTADO=''PEND.COB'' OR CAJA.CHQ_ESTADO IS NULL)';
            sConCheques1 := ' AND (A.CHQ_ESTADO=''PEND.COB'' OR A.CHQ_ESTADO IS NULL)';
            sConChequesCXC301 := ' AND CCESTADO=''P'' ';
            sConAnticipos := ' AND CCESTADO=''P'' ';
            sConNCreditos := ' AND CCESTADO=''P'' ';
         End;
      2:
         Begin //CANCELADOS
            sConDoc := ' AND CCESTADO=''C'' ';
            sConLetras := 'AND CCESTADO=''C'' ';
            sConCheques := ' AND (CAJA.CHQ_ESTADO=''COBRADO'')';
            sConCheques1 := ' AND (A.CHQ_ESTADO=''COBRADO'')';
            sConChequesCXC301 := ' AND CCESTADO=''C'' ';
            sConAnticipos := ' AND CCESTADO=''C'' ';
            sConNCreditos := ' AND CCESTADO=''C'' ';
         End;
      3:
         Begin // PENDIENTES DE ACEPTACION
          //** 25/10/2002 - PJSV
            sConDoc := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
            sConLetras := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') =''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
            sConCheques := ' AND (CAJA.CHQ_ESTADO=''XX'')';
            sConCheques1 := ' AND (A.CHQ_ESTADO=''XX'')';
            sConChequesCXC301 := '';
            sConAnticipos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
            sConNCreditos := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';
          //**
         End;
   End;
   sConAdendo := ' AND ((' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') =''XX'') OR (' + DMCXC.wReplacCeros + '(CCESTADO,''XX'') = ''I''))';

   xSQL := xSQL + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConDoc;
   xSQLLetra := xSQLLetra + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConLetras;
   xSQLAdendo := xSQLAdendo + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConAdendo;
   xSQLCheque := xSQLCheque + ' AND CAJA.FC_FEMIS < CAJA.FC_FVCMTO ' + sConCheques; //' AND (CAJA.CHQ_FECEMI<='+DMCXC.wRepFuncDate+''''+FormatDateTime(DMCXC.wFormatFecha,dtpFIN.Date)+''')) '+sConCheques;
   xSQLCheque1 := xSQLCheque1 + ' AND A.CHQ_FECEMI < A.CHQ_FECVCM ' + sConCheques1;
   xSQLChequeCXC301 := xSQLChequeCXC301 + sConChequesCXC301; //+ ' AND (CXC.CCFEMIS<='+DMCXC.wRepFuncDate+''''+FormatDateTime(DMCXC.wFormatFecha,dtpFIN.Date)+''')) '

   xSQLAnticipo := xSQLAnticipo + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConAnticipos;
   xSQLNCredito := xSQLNCredito + ' AND (CXC.CCFEMIS<=' + DMCXC.wRepFuncDate + '''' + FormatDateTime(DMCXC.wFormatFecha, dtpFIN.Date) + ''')) ' + sConNCreditos;

   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQL;
      xSQLLetra := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLLetra;
      xSQLAdendo := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAdendo;
      xSQLCheque := ' WHERE CAJA.CLIEID=''' + Cliente + '''' + xSQLCheque;
      xSQLCheque1 := ' WHERE A.CLIEID=''' + Cliente + '''' + xSQLCheque1;
      xSQLChequeCXC301 := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLChequeCXC301;
      xSQLAnticipo := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAnticipo;
      xSQLNCredito := ' WHERE CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLNCredito;
   End
   Else
   Begin
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQL;
         xSQLLetra := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLLetra;
         xSQLAdendo := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAdendo;
         xSQLCheque := ' AND CAJA.CLIEID=''' + Cliente + '''' + xSQLCheque;
         xSQLCheque1 := ' AND A.CLIEID=''' + Cliente + '''' + xSQLCheque1;
         xSQLChequeCXC301 := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLChequeCXC301;
         xSQLAnticipo := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLAnticipo;
         xSQLNCredito := ' AND CXC.CLAUXID=' + QuotedStr(ClAux) + ' AND CXC.CIAID=' + QuotedStr(CiaID) + ' AND CXC.CLIEID=''' + Cliente + '''' + xSQLNCredito;
      End;
   End;

   ////////////////////////////////////// TODOS //////////////////////////
   cSQLTodos;
   xSQLFinal := sSQLTodos + xSQL;
   dbgTodos.DataSource := DMCXC.dsReporte;
   DMCXC.cdsReporte.Close;
   DMCXC.cdsReporte.DataRequest(xSQLFinal);

   DMCXC.cdsReporte.Open;
   DMCXC.cdsReporte.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';

   TNumericField(DMCXC.cdsReporte.FieldByName('MTOLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('PAGLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('SALLOC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('MTOEXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('PAGEXT')).DisplayFormat := '###,###,##0.00';
   TNumericField(DMCXC.cdsReporte.FieldByName('SALEXT')).DisplayFormat := '###,###,##0.00';

   dbgTodos.Selected.Clear;
   dbgTodos.Selected.Add('POS'#9'3'#9'Pos'#9'F');
   dbgTodos.Selected.Add('DOCABR'#9'5'#9'Tipo'#9'F');
   dbgTodos.Selected.Add('CCSERIE'#9'4'#9'Serie'#9'F');
   dbgTodos.Selected.Add('CCNODOC'#9'11'#9'Número'#9'F');
   dbgTodos.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgTodos.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vencimiento.'#9'F');
   dbgTodos.Selected.Add('FECHA'#9'10'#9'Cancelación'#9'F');
   dbgTodos.Selected.Add('EDAD'#9'4'#9'Edad'#9'F');
   dbgTodos.Selected.Add('TMONABR'#9'4'#9'Moneda.'#9'F');
   dbgTodos.Selected.Add('MTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgTodos.Selected.Add('PAGEXT'#9'10'#9'Pago (ME)'#9'F');
   dbgTodos.Selected.Add('SALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgTodos.Selected.Add('UBICADES'#9'15'#9'Ubicación.'#9'F');
   dbgTodos.Selected.Add('SITUADES'#9'15'#9'Situación'#9'F');
   dbgTodos.Selected.Add('MTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgTodos.Selected.Add('PAGLOC'#9'10'#9'Pago (MN)'#9'F');
   dbgTodos.Selected.Add('SALLOC'#9'10'#9'Saldo (MN)'#9'F');

   dbgTodos.RedrawGrid;

   DMCXC.cdsReporte.DisableControls;
   DMCXC.cdsReporte.First;
   While Not DMCXC.cdsReporte.EOF Do
   Begin
      DMCXC.cdsReporte.Edit;
      DMCXC.cdsReporte.FieldByName('POS').AsString := IntToStr(DMCXC.cdsReporte.RecNo);
      DMCXC.cdsReporte.Post;
      DMCXC.cdsReporte.Next;
   End;
   DMCXC.cdsReporte.EnableControls;

    ////////////////////////////////// DOCUMENTOS /////////////////////////////////
   cSQLDocs;
   xSQLFinal := sSQLDocs + xSQL +
      ' AND (CLI.CLIEID=CXC.CLIEID and CLI.CLAUXID=CXC.CLAUXID)';
   dbgEst2.DataSource := DMCXC.dsQRY2;
   DMCXC.cdsQRY2.Close;
   DMCXC.cdsQRY2.ProviderName := 'dspTGE';
   DMCXC.cdsQRY2.DataRequest(xSQLFinal);
   DMCXC.cdsQRY2.Open;

    //////////////////////////// LETRAS //////////////////////////////////
   cGRID(dbgEst3);
   cSQLLetras;
   xSQLFinal := sSQLLetras + xSQLLetra +
      ' AND (CLI.CLIEID=CXC.CLIEID and CLI.CLAUXID=CXC.CLAUXID)' +
      ' AND CXC.SITID>=' + QuotedStr(sSitIni) + ' AND CXC.DOCID=' + quotedstr(xLetras);
   DMCXC.cdsQRY4.Close;
   DMCXC.cdsQRY4.ProviderName := 'dspTGE';
   DMCXC.cdsQRY4.DataRequest(xSQLFinal);
   DMCXC.cdsQRY4.Open;
                                                  //YA
   dbgEst3.DataSource := DMCXC.dsQRY4;

   xSQLFinal := sSQLLetras + xSQLAdendo +
      ' AND (CLI.CLIEID=CXC.CLIEID and CLI.CLAUXID=CXC.CLAUXID)' +
      ' AND CXC.SITID>=' + QuotedStr(sSitIni) + ' AND CXC.DOCID=' + quotedstr(xLetras);
   DMCXC.cdsQRY11.Close;
   DMCXC.cdsQRY11.ProviderName := 'dspTGE';
   DMCXC.cdsQRY11.DataRequest(xSQLFinal);
   DMCXC.cdsQRY11.Open;
   If rgEST.ItemIndex = 3 Then
      DMCXC.cdsQry11.EmptyDataSet;
                                                  //YA
  //QUERY DE CHEQUES DEVUELTOS   DMCXC.cdsQry7
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT CCNODOC,CCFEMIS,CCFVCMTO,CCFCANCEL FECHA,CXC.TMONID,MOTDEVCHQDES,' +
         ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
         ' CXC.CCSERIE,CXC.DOCID,CXC.CIAID, DOC.DOCABR, MON.TMON_LOC, CXC.BANCOID,TGE105.BANCONOM,MON.TMONABR ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN CAJA104 ON CAJA104.MOTDEVCHQ=CXC.MOTDEVCHQ ' +
         ' LEFT JOIN TGE105 ON CXC.BANCOID=TGE105.BANCOID ' + //sConChequesCXC301+
         ' LEFT JOIN TGE103 MON ON MON.TMONID=CXC.TMONID ' +
         ' LEFT JOIN TGE110 DOC ON (DOC.DOCMOD=''CXC'' and CXC.DOCID=DOC.DOCID ) ' +
         xSQLChequeCXC301 + 'AND CXC.DOCID=' + QuotedStr(sCheque) +
         ' AND CXC.MOTDEVCHQ is not null';
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT CCNODOC,CCFEMIS,CCFVCMTO,CCFCANCEL FECHA,CXC.TMONID,MOTDEVCHQDES,' +
            ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
            ' CXC.CCSERIE,CXC.DOCID,CXC.CIAID, DOC.DOCABR, MON.TMON_LOC, CXC.BANCOID,TGE105.BANCONOM,MON.TMONABR ' +
            ' FROM CXC301 CXC, CAJA104, TGE105,TGE103 MON, TGE110 DOC ' +
            ' WHERE (CAJA104.MOTDEVCHQ(+)=CXC.MOTDEVCHQ) AND (CXC.MOTDEVCHQ=CAJA104.MOTDEVCHQ) AND ( DOC.DOCMOD(+)=''CXC'' and DOC.DOCID(+)=CXC.DOCID)  AND CXC.TMONID=MON.TMONID(+) ' +
            ' AND CXC.BANCOID=TGE105.BANCOID(+) ' + xSQLChequeCXC301 + //sConChequesCXC301+
            ' AND CXC.DOCID=' + QuotedStr(sCheque) + ' AND CXC.MOTDEVCHQ is not null';
      End;
   DMCXC.cdsQry7.Close;
   dbgEst4.DataSource := DMCXC.dsQRY7;
   DMCXC.cdsQry7.DataRequest(xSQL);
   DMCXC.cdsQry7.Open;

   dbgEst4.Selected.Clear;
   dbgEst4.Selected.Add('CCNODOC'#9'15'#9'Número~Cheque'#9'F');
//   dbgEst4.Selected.Add('TCANJEID'#9'3'#9'Tipo~Cheque'#9'F');
   dbgEst4.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst4.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vcto.'#9'F');
   dbgEst4.Selected.Add('FECHA'#9'10'#9'Cancelación'#9'F');
   dbgEst4.Selected.Add('TMONABR'#9'3'#9'Moneda.'#9'F');
   dbgEst4.Selected.Add('CCMTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst4.Selected.Add('CCSALLOC'#9'10'#9'Saldo (MN)'#9'F');
   dbgEst4.Selected.Add('CCMTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst4.Selected.Add('CCSALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgEst4.Selected.Add('BANCONOM'#9'15'#9'Banco.'#9'F');
   dbgEst4.Selected.Add('MOTDEVCHQDES'#9'15'#9'Motivo ~Devolución'#9'F');
   dbgEst4.RedrawGrid;

   //** CHEQUES DIFERIDOS
  //QUERY DE CHEQUES DIFERIDOS   DMCXC.cdsQry14
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      If rgEST.ItemIndex = 2 Then // CANCELADOS
         xSql := ' SELECT A.TXNOCHQ ECNOCHQ,A.CHQ_FECEMI FC_FEMIS,A.CHQ_FECVCM FC_FVCMTO,' +
            ' A.CHQ_FECCAN FC_FCANC,MON.TMONABR,' +
            ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.TXMTOLOC ELSE 0 END FC_MTOLOC,' +
            ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.TXMTOEXT ELSE 0 END FC_MTOEXT,' +
            '  TGE105.BANCONOM, B.BANCONOM BANCOTX ' +
            ' FROM CAJA305 A ' +
      //   ' LEFT JOIN CAJA314 CAJA ON (A.TXNOCHQ = CAJA.ECNOCHQ)'+
         ' LEFT JOIN TGE105 ON (A.BANCOID=TGE105.BANCOID)' +
            ' LEFT JOIN TGE105 B ON (A.BANCOTRANS=B.BANCOID) ' +
            ' LEFT JOIN TGE103 MON ON (A.TMONID=MON.TMONID)' +
            ' LEFT JOIN TGE110 DOC ON (DOC.DOCMOD=''CXC'' and DOC.DOCID=A.DOCID)' +
            xSQLCheque1 + ' AND A.FPAGOID=' + QuotedStr(DMCXC.wsFChe)
      Else
         xSQL := ' SELECT CAJA.ECNOCHQ ECNOCHQ,CAJA.FC_FEMIS FC_FEMIS,CAJA.FC_FVCMTO FC_FVCMTO,' +
            ' CAJA.FC_FCANC FC_FCANC,MON.TMONABR, ' +
            ' CASE WHEN CAJA.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CAJA.FC_MTOLOC ELSE 0 END FC_MTOLOC, ' +
            ' CASE WHEN CAJA.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CAJA.FC_MTOEXT ELSE 0 END FC_MTOEXT, ' +
            ' TGE105.BANCONOM, B.BANCONOM BANCOTX ' +
            ' FROM CAJA314 CAJA ' +
            ' LEFT JOIN  TGE105 ON (CAJA.BANCOID=TGE105.BANCOID)' +
            ' LEFT JOIN TGE103 MON ON (CAJA.TMONID=MON.TMONID)' +
            ' LEFT JOIN TGE110 DOC ON (DOC.DOCMOD=''CXC'' and DOC.DOCID=CAJA.DOCID) ' +
            ' LEFT JOIN CAJA305 ON CAJA305.CIAID=CAJA.CIAID AND CAJA305.TXNOCHQ=CAJA.ECNOCHQ AND CAJA305.CLIEID=CAJA.CLIEID ' +
            ' LEFT JOIN TGE105 B ON (CAJA305.BANCOTRANS=B.BANCOID) ' +
            xSQLCheque + ' AND CAJA.MOTDEVCHQ IS NULL ' +
            ' AND CAJA.FPAGOID=' + QuotedStr(DMCXC.wsFChe) +
            ' UNION ' +
            ' SELECT A.TXNOCHQ ECNOCHQ,A.CHQ_FECEMI FC_FEMIS,A.CHQ_FECVCM FC_FVCMTO,' +
            ' A.CHQ_FECCAN FC_FCANC,MON.TMONABR,' +
            ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.TXMTOLOC ELSE 0 END FC_MTOLOC,' +
            ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.TXMTOEXT ELSE 0 END FC_MTOEXT,' +
            '  TGE105.BANCONOM, B.BANCONOM   BANCOTX ' +
            ' FROM CAJA305 A' +
            ' LEFT JOIN TGE105 ON (A.BANCOID=TGE105.BANCOID)' +
            ' LEFT JOIN TGE105 B ON (A.BANCOTRANS=B.BANCOID) ' +
            ' LEFT JOIN TGE103 MON ON (A.TMONID=MON.TMONID)' +
            ' LEFT JOIN TGE110 DOC ON (DOC.DOCMOD=''CXC'' and DOC.DOCID=A.DOCID)' +
            xSQLCheque1 + ' AND A.DOCID=' + QuotedStr(sCheque);
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         If rgEST.ItemIndex = 2 Then
            xSql := ' SELECT A.TXNOCHQ ECNOCHQ,A.CHQ_FECEMI FC_FEMIS,A.CHQ_FECVCM FC_FVCMTO,' +
               ' A.CHQ_FECCAN FC_FCANC,MON.TMONABR,' +
               ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.TXMTOLOC ELSE 0 END FC_MTOLOC,' +
               ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.TXMTOEXT ELSE 0 END FC_MTOEXT,' +
               '  TGE105.BANCONOM' +
//         ' FROM CAJA305 A,CAJA314 CAJA, TGE105,TGE103 MON, TGE110 DOC'+
            ' FROM CAJA305 A, TGE105,TGE103 MON, TGE110 DOC' +
               ' WHERE (DOC.DOCMOD(+)=''CXC'' and DOC.DOCID(+)=A.DOCID)  AND' +
               ' A.TMONID=MON.TMONID(+)  AND A.BANCOID=TGE105.BANCOID(+) ' + xSQLCheque1 +
//         ' AND A.FPAGOID='+QuotedStr(DMCXC.wsFChe)+' AND A.TXNOCHQ = CAJA.ECNOCHQ'
            ' AND A.FPAGOID=' + QuotedStr(DMCXC.wsFChe) + ' '
         Else
            xSQL := ' SELECT CAJA.ECNOCHQ ECNOCHQ,CAJA.FC_FEMIS FC_FEMIS,CAJA.FC_FVCMTO FC_FVCMTO,' +
               ' CAJA.FC_FCANC FC_FCANC,MON.TMONABR, ' +
               ' CASE WHEN CAJA.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CAJA.FC_MTOLOC ELSE 0 END FC_MTOLOC, ' +
               ' CASE WHEN CAJA.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CAJA.FC_MTOEXT ELSE 0 END FC_MTOEXT, ' +
               ' TGE105.BANCONOM ' +
               ' FROM CAJA314 CAJA, TGE105,TGE103 MON, TGE110 DOC ' +
               ' WHERE ( DOC.DOCMOD(+)=''CXC'' and DOC.DOCID(+)=CAJA.DOCID)  AND CAJA.TMONID=MON.TMONID(+) ' +
               ' AND CAJA.MOTDEVCHQ IS NULL' +
               ' AND CAJA.BANCOID=TGE105.BANCOID(+) ' + xSQLCheque + //xSQLChequeCXC301+sConChequesCXC301+
               ' AND CAJA.FPAGOID=' + QuotedStr(DMCXC.wsFChe) +
               ' UNION ALL' +
               ' SELECT A.TXNOCHQ ECNOCHQ,A.CHQ_FECEMI FC_FEMIS,A.CHQ_FECVCM FC_FVCMTO,' +
               ' A.CHQ_FECCAN FC_FCANC,MON.TMONABR,' +
               ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.TXMTOLOC ELSE 0 END FC_MTOLOC,' +
               ' CASE WHEN A.TMONID= ' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.TXMTOEXT ELSE 0 END FC_MTOEXT,' +
               '  TGE105.BANCONOM' +
               ' FROM CAJA305 A, TGE105,TGE103 MON, TGE110 DOC' +
               ' WHERE (DOC.DOCMOD(+)=''CXC'' and DOC.DOCID(+)=A.DOCID)  AND' +
               ' A.TMONID=MON.TMONID(+)  AND' +
               ' A.BANCOID=TGE105.BANCOID(+)' + xSQLCheque1 +
               ' AND A.FPAGOID=' + QuotedStr(sCheque);
      End;
   DMCXC.cdsQry14.Close;
   dbgEst7.DataSource := DMCXC.dsQRY14;
   DMCXC.cdsQry14.DataRequest(xSQL);
   DMCXC.cdsQry14.Open;

   dbgEst7.Selected.Clear;
   dbgEst7.Selected.Add('ECNOCHQ'#9'15'#9'Número~Cheque'#9'F');
   dbgEst7.Selected.Add('FC_FEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst7.Selected.Add('FC_FVCMTO'#9'10'#9'Fecha~Vcto.'#9'F');
   dbgEst7.Selected.Add('FC_FCANC'#9'10'#9'Cancelación'#9'F');
   dbgEst7.Selected.Add('TMONABR'#9'3'#9'Moneda.'#9'F');
   dbgEst7.Selected.Add('FC_MTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst7.Selected.Add('FC_MTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst7.Selected.Add('BANCONOM'#9'20'#9'Banco~Origen'#9'F');
   dbgEst7.Selected.Add('BANCOTX'#9'20'#9'Banco~Destino'#9'F');
   dbgEst7.RedrawGrid;

   //QUERY DE ANTICIPOS    DMCXC.cdsQry5
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT CIAID,CLIEID,CLIEDES,CLIERUC,CXC.DOCID,CCSERIE,CCNODOC,CXC.CCFEMIS,CXC.TMONID,TGE103.TMONDES,TGE103.TMONABR,TGE103.TMON_LOC,TGE110.DOCABR, ' +
         ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGLOC ELSE 0 END CCPAGEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
         ' CXC.BANCOID,TGE105.BANCONOM,TGE105.BANCOABR,CXC.CCNLETBCO ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN TGE110 ON TGE110.DOCMOD=''CXC'' AND TGE110.DOCID=CXC.DOCID ' +
         ' LEFT JOIN TGE103 ON TGE103.TMONID=CXC.TMONID ' +
         ' LEFT JOIN TGE105 ON CXC.BANCOID=TGE105.BANCOID ' + xSQLAnticipo + sConAnticipos +
         ' AND CXC.DOCID=' + QuotedStr(sAnticipo);
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT CIAID,CLIEID,CLIEDES,CLIERUC,CXC.DOCID,CCSERIE,CCNODOC,CXC.CCFEMIS,CXC.TMONID,TGE103.TMONDES,TGE103.TMONABR,TGE103.TMON_LOC,TGE110.DOCABR, ' +
            ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
            ' CXC.BANCOID,TGE105.BANCONOM,CXC.CCNLETBCO ' +
            ' FROM CXC301 CXC,TGE110, TGE105,TGE103 ' +
            ' WHERE CXC.DOCID=TGE110.DOCID(+) AND TGE110.DOCMOD=''CXC'' AND CXC.BANCOID=TGE105.BANCOID(+) ' + xSQLAnticipo + sConAnticipos + //+xSQLAnticipo+
            ' AND CXC.DOCID=' + QuotedStr(sAnticipo) + ' AND TGE103.TMONID(+)=CXC.TMONID';
      End;

   DMCXC.cdsQry5.Close;
   dbgEst5.DataSource := DMCXC.dsQRY5;
   DMCXC.cdsQry5.DataRequest(xSQL);
   DMCXC.cdsQry5.Open;

   dbgEst5.Selected.Clear;
   dbgEst5.Selected.Add('CCNODOC'#9'15'#9'Anticipo'#9'F');
   dbgEst5.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst5.Selected.Add('TMONID'#9'3'#9'Moneda.'#9'F');
   dbgEst5.Selected.Add('CCMTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst5.Selected.Add('CCSALLOC'#9'10'#9'Saldo (MN)'#9'F');
   dbgEst5.Selected.Add('CCMTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst5.Selected.Add('CCSALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgEst5.Selected.Add('BANCONOM'#9'15'#9'Banco.'#9'F');
   dbgEst5.Selected.Add('CCNLETBCO'#9'15'#9'Liquidacion~Cobranza'#9'F');
   dbgEst5.RedrawGrid;

  //QUERY DE NOTAS DE CREDITO    DMCXC.cdsQry6
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      xSQL := ' SELECT CXC.CIAID,CXC.DOCID,CLIEID,CLIEDES,CLIERUC,CXC.CCSERIE,CCNODOC,CXC.CCFEMIS,CXC.TMONID,TGE103.TMONDES,TGE103.TMONABR,TGE103.TMON_LOC, ' +
         ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
         ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
         ' CXC.BANCOID,TGE105.BANCONOM,DOC.DOCABR ' +
         ' FROM CXC301 CXC ' +
         ' LEFT JOIN TGE110 DOC ON (CXC.DOCID=DOC.DOCID AND DOC.DOCMOD = ''CXC'') ' +
         ' LEFT JOIN TGE103 ON TGE103.TMONID=CXC.TMONID ' +
         ' LEFT JOIN TGE105 ON CXC.BANCOID=TGE105.BANCOID ' + xSQLNCredito + sConNCreditos +
         ' AND CXC.DOCID=' + QuotedStr(sNCredito);
   End //AND CXC.CCPAGORI<=0
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         xSQL := ' SELECT CXC.CIAID,CXC.DOCID,CLIEID,CLIEDES,CLIERUC,CXC.CCSERIE,CCNODOC,CXC.CCFEMIS,CXC.TMONID,TGE103.TMONDES,TGE103.TMONABR,TGE103.TMON_LOC, ' +
            ' CXC.CCMTOORI,CXC.CCPAGORI,CXC.CCSALORI, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCMTOLOC ELSE 0 END CCMTOLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCSALLOC ELSE 0 END CCSALLOC, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCMTOEXT ELSE 0 END CCMTOEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCSALEXT ELSE 0 END CCSALEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN CCPAGEXT ELSE 0 END CCPAGEXT, ' +
            ' CASE WHEN CXC.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN CCPAGLOC ELSE 0 END CCPAGLOC, ' +
            ' CXC.BANCOID,TGE105.BANCONOM,DOC.DOCABR ' +
            ' FROM CXC301 CXC,TGE110 DOC, TGE105, TGE103 ' +
            ' WHERE CXC.DOCID=DOC.DOCID(+) AND DOC.DOCMOD(+)=''CXC'' AND CXC.BANCOID=TGE105.BANCOID(+) ' + xSQLNCredito + sConNCreditos +
            ' AND CXC.DOCID=' + QuotedStr(sNCredito) + ' AND TGE103.TMONID(+)=CXC.TMONID';
      End; //AND CXC.CCPAGORI<=0

   dbgEst6.Selected.Clear;
   dbgEst6.Selected.Add('CCSERIE'#9'10'#9'Serie'#9'F');
   dbgEst6.Selected.Add('CCNODOC'#9'15'#9'Número'#9'F');
   dbgEst6.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión.'#9'F');
   dbgEst6.Selected.Add('TMONID'#9'3'#9'Moneda.'#9'F');
   dbgEst6.Selected.Add('CCMTOLOC'#9'10'#9'Monto~Original(MN)'#9'F');
   dbgEst6.Selected.Add('CCPAGLOC'#9'10'#9'Monto~Aplicado(MN)'#9'F');
   dbgEst6.Selected.Add('CCSALLOC'#9'10'#9'Saldo (MN)'#9'F');
   dbgEst6.Selected.Add('CCMTOEXT'#9'10'#9'Monto~Original(ME)'#9'F');
   dbgEst6.Selected.Add('CCPAGEXT'#9'10'#9'Monto~Aplicado(ME)'#9'F');
   dbgEst6.Selected.Add('CCSALEXT'#9'10'#9'Saldo (ME)'#9'F');
   dbgEst6.RedrawGrid;

   DMCXC.cdsQry6.Close;
   dbgEst6.DataSource := DMCXC.dsQRY6;
   DMCXC.cdsQry6.DataRequest(xSQL);
   DMCXC.cdsQry6.Open;

   ProcessSaldo(DMCXC.cdsQRY2);
   ProcessSaldo(DMCXC.cdsQRY4);

   cGRID(dbgEst2);

   cFormat(DMCXC.cdsQRY2);
   cFormat(DMCXC.cdsQRY4);

   cFooter(dbgEst2, DMCXC.cdsQRY2);
   cFooter(dbgEst3, DMCXC.cdsQRY4);
   cFooterCheque(dbgEst4, DMCXC.cdsQRY7);
   cFooterAnticipo(dbgEst5, DMCXC.cdsQRY5);
   cFooterNCredito(dbgEst6, DMCXC.cdsQRY6);
   cFooterTodos(dbgTodos, DMCXC.cdsReporte);

   Totales;
   Screen.Cursor := crDefault;
End;

{//** 28/10/2002 - PJSV
procedure TFEstCxCli.dbgEst5DblClick(Sender: TObject);
var c:string;
begin

  if ((dbgEst5.DataSource.DataSet.FieldByName('CCPAGLOC').AsCurrency = 0)
     or dbgEst5.DataSource.DataSet.FieldByName('CCPAGLOC').IsNull )
   and ((dbgEst5.DataSource.DataSet.FieldByName('CCPAGEXT').AsCurrency = 0)
       or dbgEst5.DataSource.DataSet.FieldByName('CCPAGEXT').IsNull ) then
  begin
   Raise Exception.Create('No hay abonos Efectuados a Este Documento') ;
  end ;

  //
  Screen.Cursor := crHourGlass;

// PAGOS DE CHEQUES
  if (DMCXC.SRV_D = 'DB2NT') or
   (DMCXC.SRV_D = 'DB2400') then
  begin
    c :=' SELECT '+
      ' A.CIAID, A.CLIEID, A.DOCID2 DOCID, A.CCSERIE2 CCSERIE, A.CCNODOC2 CCNODOC, A.TCANJEID, A.DOCID DOCID2, A.CCSERIE CCSERIE2, A.CCNODOC CCNODOC2, A.TMONID, '+
      ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonExt)+' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, '+
      ' CASE WHEN A.TMONID='+QuotedStr(DMCXC.wTMonLoc)+' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, '+
      ' A.DCCMTOORI, A.CCFCANJE, '+
      ' C.DOCABR DOCABR2,B.DOCABR,E.TMONDES, E.TMONABR, E.TMON_LOC '+
      ' FROM '+
      ' CXC305 A '+
      ' LEFT JOIN TGE103 E ON (E.TMONID=A.TMONID)'+
      ' LEFT JOIN TGE110 C ON C.DOCID=A.DOCID AND C.DOCMOD=''CXC'' '+
      ' INNER  JOIN TGE110 B ON B.DOCID=A.DOCID2 AND B.DOCMOD = ''CXC'' '+
      ' AND B.DOC_FREG=''A'''+
      ' WHERE A.CIAID='+QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CIAID').AsString)+
      ' AND A.DOCID2='+QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('DOCID').AsString)+
      ' AND A.CCSERIE2='+QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString)+
      ' AND A.CCNODOC2='+QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString)+
      ' AND A.CLIEID = '+QuotedStr(dblcClie.text);
  end
  else
   if (DMCXC.SRV_D = 'ORACLE') then
   begin

   end;

  DMCXC.cdsQry11.Close;
  DMCXC.cdsQry11.DataRequest (c) ;
  DMCXC.cdsQry11.Open;
  if DMCXC.cdsQry11.IndexFieldNames<>'CIAID;DOCID2;CCSERIE2;CCNODOC2' then
   DMCXC.cdsQry11.IndexFieldNames:='CIAID;DOCID2;CCSERIE2;CCNODOC2';
  DMCXC.cdsQry11.MasterSource:=DMCXC.dsQry5;
  DMCXC.cdsQry11.MasterFields:='CIAID;DOCID;CCSERIE;CCNODOC';

  Screen.Cursor := crHourGlass;
  Application.CreateForm(TFDetAmo,FDetAmo);
  try
   FDetAmo.Generate;
   ShowWindow( FDetAmo.Handle, SW_HIDE);

   FDetAmo.Compania   := DMCXC.cdsQry5.FieldByName('CIAID').AsString;
   FDetAmo.TDocumento := DMCXC.cdsQry5.FieldByName('DOCID').AsString;
   FDetAmo.Documento  := DMCXC.cdsQry5.FieldByName('CCNODOC').AsString;
   FDetAmo.Serie      := DMCXC.cdsQry5.FieldByName('CCSERIE').AsString;
   FDetAmo.Cliente    := DMCXC.cdsQry5.FieldByName('CLIEID').AsString;
   FDetAmo.MonLoc     := (DMCXC.cdsQry5.FieldByName('TMON_LOC').AsString='L');
   FDetAmo.Hist       := False;
   if FDetAmo.MonLoc then
   begin
    FDetAmo.DImporte:= DMCXC.cdsQry5.FieldByName('CCMTOLOC').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry5.FieldByName('CCSALLOC').AsFloat ;
    end
   else begin
    FDetAmo.DImporte:= DMCXC.cdsQry5.FieldByName('CCMTOEXT').AsFloat ;
    FDetAmo.DSaldo  := DMCXC.cdsQry5.FieldByName('CCSALEXT').AsFloat ;
   end;
   //lLENAR CLIENTE Y TIPO DE DOCUMENTO
   With FDetAmo do
   begin
    dbeCLIE.Text := self.dbeCLIE.Text ;
    dbeTDOC.Text := DMCXC.cdsQry5.FieldByName('DOCABR').AsString ;
   end ;
   //
   FDetAmo.ShowModal;
  finally
   FDetAmo.Free;
  end;
  Screen.Cursor := crDefault;
end;
}

Procedure TFEstCxCli.Z2bbtnOtrosClick(Sender: TObject);
Var
   sGrupo, sSQL: String;
Begin
   DMCXC.cdsQry6.IndexFieldNames := '';
   sGrupo := DMCXC.BuscaQry('dspTGE', 'TGE204', 'GRUPOID', 'CLIEID=' + QuotedStr(dblcClie.text), 'GRUPOID');
   sSQL := 'SELECT CLIEID,CLIERUC,CLIEDES FROM TGE204 WHERE GRUPOID=' + QuotedStr(sGrupo) +
      ' and CLIEID<>' + QuotedStr(dblcClie.text);
   DMCXC.cdsQry.close;
   DMCXC.cdsQry.DataRequest(sSQL);
   DMCXC.cdsQry.OPen;
   If DMCXC.cdsQry.RecordCount = 0 Then
   Begin
      ShowMessage('No hay otros Clientes');
      exit;
   End;
   dbgClientes.DataSource := DMCXC.dsQry;
   dbgClientes.Selected.Clear;
   dbgClientes.Selected.Add('CLIEID'#9'11'#9'Id');
   dbgClientes.Selected.Add('CLIERUC'#9'11'#9'RUC');
   dbgClientes.Selected.Add('CLIEDES'#9'40'#9'Nombres');
   dbgClientes.RedrawGrid;

   pnlClientes.Visible := True;
End;

Procedure TFEstCxCli.bbtnCierra1Click(Sender: TObject);
Begin
   dbgClientes.DataSource := Nil;
   pnlClientes.Visible := False;
End;

Procedure TFEstCxCli.Histrico1Click(Sender: TObject);
Begin
   xPopup := '1';
   Screen.Cursor := crHourGlass;
   pnlHist.Caption := 'Histórico de Letras';
   lblDocumento.caption := DMCXC.cdsQry4.FieldByName('DOCABR').AsString + ' ' +
      DMCXC.cdsQry4.FieldByName('CCSERIE').AsString + ' ' +
      DMCXC.cdsQry4.FieldByName('CCNODOC').AsString;

  //CLG: MOSTRAS EL HISTORICO DE LETRAS
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      Filtracds(DMCXC.cdsHLetras, 'Select HIS.*, '
         + 'SIT.SITUADES AS SITUA, UBI.UBICADES AS UBICA '
         + 'From CXC402 HIS '
         + 'Left join CXC104 SIT on (SIT.SITUAID=HIS.SITID) '
         + 'Left join CXC105 UBI on (UBI.UBICAID=HIS.UBIID) '
         + 'Where '
         + 'CIAID=' + '''' + DMCXC.cdsQry4.FieldByName('CIAID').AsString + '''' + ' and '
         + 'DOCID=' + '''' + DMCXC.cdsQry4.FieldByName('DOCID').AsString + '''' + ' and '
         + 'CCNODOC=' + '''' + DMCXC.cdsQry4.FieldByName('CCNODOC').AsString + '''' + ' ORDER BY CCHIST DESC ');
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         Filtracds(DMCXC.cdsHLetras, 'Select HIS.*, '
            + 'SIT.SITUADES AS SITUA, UBI.UBICADES AS UBICA '
            + 'From CXC402 HIS,CXC104 SIT,CXC105 UBI '
            + 'Where '
            + 'CIAID=' + '''' + DMCXC.cdsQry4.FieldByName('CIAID').AsString + '''' + ' and '
            + 'DOCID=' + '''' + DMCXC.cdsQry4.FieldByName('DOCID').AsString + '''' + ' and '
            + 'CCNODOC=' + '''' + DMCXC.cdsQry4.FieldByName('CCNODOC').AsString + ''''
            + ' and (HIS.SITID=SIT.SITUAID(+)) '
            + ' and (HIS.UBIID=UBI.UBICAID(+)) ORDER BY CCHIST DESC ')
      End;
   Historico;
   Screen.Cursor := crDefault;
End;

Procedure TFEstCxCli.CanLetraClick(Sender: TObject);
Begin
   xPopup := '2';
   pnlHist.Caption := 'Cancelaciones de Letras';
   bbtnImprimeAmortiza.visible := True;
   CargaDetalle(' AND B.DOC_FREG=' + quotedstr('L'));
End;

{procedure TFEstCxCli.dbgHistDblClick(Sender: TObject);
var
   c,xxCia, xxDoc, xxNoD : String;
begin
  If (xPopup = '2') then
  if ((dbgEst3.DataSource.DataSet.FieldByName('PAGLOC').AsCurrency = 0)
     or dbgEst3.DataSource.DataSet.FieldByName('PAGLOC').IsNull )
   and ((dbgEst3.DataSource.DataSet.FieldByName('PAGEXT').AsCurrency = 0)
       or dbgEst3.DataSource.DataSet.FieldByName('PAGEXT').IsNull ) then
  begin
   Raise Exception.Create('No hay Detalle para esta Cancelación') ;
  end ;

  If (xPopup = '3') then
  if ((dbgEst2.DataSource.DataSet.FieldByName('PAGLOC').AsCurrency = 0)
     or dbgEst2.DataSource.DataSet.FieldByName('PAGLOC').IsNull )
   and ((dbgEst2.DataSource.DataSet.FieldByName('PAGEXT').AsCurrency = 0)
       or dbgEst2.DataSource.DataSet.FieldByName('PAGEXT').IsNull ) then
  begin
   Raise Exception.Create('No hay Detalle para esta Cancelación') ;
  end ;

  If (xPopup = '4') then
  if ((dbgEst4.DataSource.DataSet.FieldByName('PAGLOC').AsCurrency = 0)
     or dbgEst4.DataSource.DataSet.FieldByName('PAGLOC').IsNull )
   and ((dbgEst4.DataSource.DataSet.FieldByName('PAGEXT').AsCurrency = 0)
       or dbgEst4.DataSource.DataSet.FieldByName('PAGEXT').IsNull ) then
  begin
   Raise Exception.Create('No hay Detalle para esta Cancelación') ;
  end ;

    //If (xPopup = '2') or  (xPopup = '3') or (xPopup = '4') or (xPopup = '5') or (xPopup = '6') then
    //begin
       Screen.Cursor := crHourGlass;
       Application.CreateForm(TFDetAmo,FDetAmo);
       try
          FDetAmo.Compania   := DMCXC.cdsQry9.FieldByName('CIAID').AsString;
          FDetAmo.TDocumento := DMCXC.cdsQry9.FieldByName('DOCID').AsString;
          FDetAmo.Documento  := DMCXC.cdsQry9.FieldByName('CCNODOC').AsString;
          FDetAmo.Serie      := DMCXC.cdsQry9.FieldByName('CCSERIE').AsString;
          FDetAmo.Cliente    := DMCXC.cdsQry9.FieldByName('CLIEID').AsString;
          FDetAmo.MonLoc     := (DMCXC.cdsQry9.FieldByName('TMON_LOC').AsString='L');
          FDetAmo.Hist       := True;

          FDetAmo.Generate;
          ShowWindow( FDetAmo.Handle, SW_HIDE);

          if FDetAmo.MonLoc then
            FDetAmo.DImporte:= DMCXC.cdsQry9.FieldByName('DCCMTOLOC').AsFloat
          else
            FDetAmo.DImporte:= DMCXC.cdsQry9.FieldByName('DCCMTOEXT').AsFloat ;
          //lLENAR CLIENTE Y TIPO DE DOCUMENTO
          With FDetAmo do
           begin
             dbeCLIE.Text := self.dbeCLIE.Text ;
             dbeTDOC.Text := DMCXC.cdsQry9.FieldByName('DOCABR').AsString ;
           end ;
        FDetAmo.ShowModal;
       finally
         FDetAmo.Free;
         Screen.Cursor := crDefault;
       end;
     //end;
end;
 }

Procedure TFEstCxCli.CargaDetalle(xDocumentos: String);
Var
   C: String;
Begin
   Screen.Cursor := crHourGlass;
   // PAGOS DE LETRAS
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      c := ' SELECT ' +
         ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
         ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
         ' A.DCCMTOEXT CCMTOEXT, ' +
         ' A.DCCMTOLOC CCMTOLOC, ' +
         ' A.DCCMTOORI, A.CCFCANJE, ' +
         ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
         ' FROM ' +
         ' CXC305 A ' +
         ' LEFT JOIN TGE103 E ON (E.TMONID=A.TMONID)' +
         ' LEFT JOIN TGE110 C ON C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC'' ' +
         ' INNER  JOIN TGE110 B ON B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' + xDocumentos;
      If (xPopup = '1') Or (xPopup = '2') Then
      Begin
         lblDocumento.caption := dbgEst3.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
            dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
            dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
            'MONTO ORIGINAL: ' +
            dbgEst3.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
            floattostrf(dbgEst3.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

         c := c + ' WHERE A.CIAID=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('CIAID').AsString) +
            ' AND A.DOCID=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('DOCID').AsString) +
            ' AND A.CCSERIE=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
            ' AND A.CCNODOC=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
            ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
         sDoc := dbgEst3.DataSource.DataSet.FieldByName('DOCID').AsString;
         sDocAbr := dbgEst3.DataSource.DataSet.FieldByName('DOCABR').AsString;
         sSerie := dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString;
         sNoDoc := dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString;
         sMon := dbgEst3.DataSource.DataSet.FieldByName('TMONABR').AsString;
         If dbgEst3.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
         Begin
            fImp := dbgEst3.DataSource.DataSet.FieldByName('MTOLOC').AsFloat;
            fSal := dbgEst3.DataSource.DataSet.FieldByName('SALLOC').AsFloat;
         End
         Else
         Begin
            fImp := dbgEst3.DataSource.DataSet.FieldByName('MTOEXT').AsFloat;
            fSal := dbgEst3.DataSource.DataSet.FieldByName('SALEXT').AsFloat;
         End;
      End
      Else
         If (xPopup = '3') Then
         Begin
            lblDocumento.caption := dbgEst2.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
               dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
               dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
               'MONTO ORIGINAL: ' +
               dbgEst2.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
               floattostrf(dbgEst2.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

            c := c + ' WHERE A.CIAID=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CIAID').AsString) +
               ' AND A.DOCID=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('DOCID').AsString) +
               ' AND A.CCSERIE=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
               ' AND A.CCNODOC=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
               ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
            sDoc := dbgEst2.DataSource.DataSet.FieldByName('DOCID').AsString;
            sDocAbr := dbgEst2.DataSource.DataSet.FieldByName('DOCABR').AsString;
            sSerie := dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString;
            sNoDoc := dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString;
            sMon := dbgEst2.DataSource.DataSet.FieldByName('TMONABR').AsString;
            If dbgEst2.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            Begin
               fImp := dbgEst2.DataSource.DataSet.FieldByName('MTOLOC').AsFloat;
               fSal := dbgEst2.DataSource.DataSet.FieldByName('SALLOC').AsFloat;
            End
            Else
            Begin
               fImp := dbgEst2.DataSource.DataSet.FieldByName('MTOEXT').AsFloat;
               fSal := dbgEst2.DataSource.DataSet.FieldByName('SALEXT').AsFloat;
            End;

         End
         Else
            If (xPopup = '4') Then
            Begin
               lblDocumento.caption := dbgEst4.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                  dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                  dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                  'MONTO ORIGINAL: ' +
                  dbgEst4.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                  floattostrf(dbgEst4.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

               c := c + ' WHERE A.CIAID=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CIAID').AsString) +
                  ' AND A.DOCID=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('DOCID').AsString) +
                  ' AND A.CCSERIE=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                  ' AND A.CCNODOC=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                  ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
               sDoc := dbgEst4.DataSource.DataSet.FieldByName('DOCID').AsString;
               sDocAbr := dbgEst4.DataSource.DataSet.FieldByName('DOCABR').AsString;
               sSerie := dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString;
               sNoDoc := dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString;
               sMon := dbgEst4.DataSource.DataSet.FieldByName('TMONABR').AsString;
               If dbgEst4.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  fImp := dbgEst4.DataSource.DataSet.FieldByName('CCMTOLOC').AsFloat;
                  fSal := dbgEst4.DataSource.DataSet.FieldByName('CCSALLOC').AsFloat;
               End
               Else
               Begin
                  fImp := dbgEst4.DataSource.DataSet.FieldByName('CCMTOEXT').AsFloat;
                  fSal := dbgEst4.DataSource.DataSet.FieldByName('CCSALEXT').AsFloat;
               End;

            End
            Else
               If (xPopup = '5') Then
               Begin
                  lblDocumento.caption := dbgEst5.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                     dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                     dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                     'MONTO ORIGINAL: ' +
                     dbgEst5.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                     floattostrf(dbgEst5.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

                  c := c + ' WHERE A.CIAID=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CIAID').AsString) +
                     ' AND A.DOCID2=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('DOCID').AsString) +
                     ' AND A.CCSERIE2=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                     ' AND A.CCNODOC2=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                     ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
                  sDoc := dbgEst5.DataSource.DataSet.FieldByName('DOCID').AsString;
                  sDocAbr := dbgEst5.DataSource.DataSet.FieldByName('DOCABR').AsString;
                  sSerie := dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString;
                  sNoDoc := dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString;
                  sMon := dbgEst5.DataSource.DataSet.FieldByName('TMONABR').AsString;
                  If dbgEst5.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                  Begin
                     fImp := dbgEst5.DataSource.DataSet.FieldByName('CCMTOLOC').AsFloat;
                     fSal := dbgEst5.DataSource.DataSet.FieldByName('CCSALLOC').AsFloat;
                  End
                  Else
                  Begin
                     fImp := dbgEst5.DataSource.DataSet.FieldByName('CCMTOEXT').AsFloat;
                     fSal := dbgEst5.DataSource.DataSet.FieldByName('CCSALEXT').AsFloat;
                  End;

               End
               Else
                  If (xPopup = '6') Then
                  Begin
                     lblDocumento.caption := dbgEst6.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                        dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                        dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                        'MONTO ORIGINAL: ' +
                        dbgEst6.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                        floattostrf(dbgEst6.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

                     c := c + ' WHERE A.CIAID=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CIAID').AsString) +
                        ' AND A.DOCID2=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('DOCID').AsString) +
                        ' AND A.CCSERIE2=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                        ' AND A.CCNODOC2=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                        ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
                     sDoc := dbgEst6.DataSource.DataSet.FieldByName('DOCID').AsString;
                     sDocAbr := dbgEst6.DataSource.DataSet.FieldByName('DOCABR').AsString;
                     sSerie := dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString;
                     sNoDoc := dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString;
                     sMon := dbgEst6.DataSource.DataSet.FieldByName('TMONABR').AsString;
                     If dbgEst6.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                     Begin
                        fImp := dbgEst6.DataSource.DataSet.FieldByName('CCMTOLOC').AsFloat;
                        fSal := dbgEst6.DataSource.DataSet.FieldByName('CCSALLOC').AsFloat;
                     End
                     Else
                     Begin
                        fImp := dbgEst6.DataSource.DataSet.FieldByName('CCMTOEXT').AsFloat;
                        fSal := dbgEst6.DataSource.DataSet.FieldByName('CCSALEXT').AsFloat;
                     End;

                  End;
   End
   Else
      If (DMCXC.SRV_D = 'ORACLE') Then
      Begin
         C := ' SELECT ' +
            ' A.CIAID, A.CLIEID, A.DOCID, A.CCSERIE, A.CCNODOC, A.TCANJEID, A.DOCID2, A.CCSERIE2, A.CCNODOC2, A.TMONID, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonExt) + ' THEN A.DCCMTOEXT ELSE 0 END DCCMTOEXT, ' +
            ' CASE WHEN A.TMONID=' + QuotedStr(DMCXC.wTMonLoc) + ' THEN A.DCCMTOLOC ELSE 0 END DCCMTOLOC, ' +
            ' A.DCCMTOEXT CCMTOEXT, ' +
            ' A.DCCMTOLOC CCMTOLOC, ' +
            ' A.DCCMTOORI, A.CCFCANJE, ' +
            ' B.DOCABR ,C.DOCABR DOCABR2,E.TMONDES, E.TMONABR, E.TMON_LOC ' +
            ' FROM CXC305 A,TGE103 E,TGE110 C,TGE110 B ';
         If (xPopup = '1') Or (xPopup = '2') Then
         Begin
            lblDocumento.caption := dbgEst3.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
               dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
               dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
               'MONTO ORIGINAL: ' +
               dbgEst3.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
               floattostrf(dbgEst3.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

            c := c + ' WHERE E.TMONID(+)=A.TMONID and C.DOCID(+)=A.DOCID2 AND C.DOCMOD(+)=''CXC''' +
               ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' + xDocumentos +
               ' AND A.CIAID=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('CIAID').AsString) +
               ' AND A.DOCID=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('DOCID').AsString) +
               ' AND A.CCSERIE=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
               ' AND A.CCNODOC=' + QuotedStr(dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
               ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
            sDoc := dbgEst3.DataSource.DataSet.FieldByName('DOCID').AsString;
            sDocAbr := dbgEst3.DataSource.DataSet.FieldByName('DOCABR').AsString;
            sSerie := dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString;
            sNoDoc := dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString;
            sMon := dbgEst3.DataSource.DataSet.FieldByName('TMONABR').AsString;
            If dbgEst3.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
            Begin
               fImp := dbgEst3.DataSource.DataSet.FieldByName('MTOLOC').AsFloat;
               fSal := dbgEst3.DataSource.DataSet.FieldByName('SALLOC').AsFloat;
            End
            Else
            Begin
               fImp := dbgEst3.DataSource.DataSet.FieldByName('MTOEXT').AsFloat;
               fSal := dbgEst3.DataSource.DataSet.FieldByName('SALEXT').AsFloat;
            End;
         End
         Else
            If (xPopup = '3') Then
            Begin
               lblDocumento.caption := dbgEst2.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                  dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                  dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                  'MONTO ORIGINAL: ' +
                  dbgEst2.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                  floattostrf(dbgEst2.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

               c := c + ' WHERE E.TMONID=A.TMONID and C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC''' +
                  ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' + xDocumentos +
                  ' AND A.CIAID=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CIAID').AsString) +
                  ' AND A.DOCID=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('DOCID').AsString) +
                  ' AND A.CCSERIE=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                  ' AND A.CCNODOC=' + QuotedStr(dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                  ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
               sDoc := dbgEst2.DataSource.DataSet.FieldByName('DOCID').AsString;
               sDocAbr := dbgEst2.DataSource.DataSet.FieldByName('DOCABR').AsString;
               sSerie := dbgEst2.DataSource.DataSet.FieldByName('CCSERIE').AsString;
               sNoDoc := dbgEst2.DataSource.DataSet.FieldByName('CCNODOC').AsString;
               sMon := dbgEst2.DataSource.DataSet.FieldByName('TMONABR').AsString;
               If dbgEst2.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
               Begin
                  fImp := dbgEst2.DataSource.DataSet.FieldByName('MTOLOC').AsFloat;
                  fSal := dbgEst2.DataSource.DataSet.FieldByName('SALLOC').AsFloat;
               End
               Else
               Begin
                  fImp := dbgEst2.DataSource.DataSet.FieldByName('MTOEXT').AsFloat;
                  fSal := dbgEst2.DataSource.DataSet.FieldByName('SALEXT').AsFloat;
               End;
            End
            Else
               If (xPopup = '4') Then
               Begin
                  lblDocumento.caption := dbgEst4.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                     dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                     dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                     'MONTO ORIGINAL: ' +
                     dbgEst4.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                     floattostrf(dbgEst4.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

                  c := c + ' WHERE E.TMONID=A.TMONID and C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC''' +
                     ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' + xDocumentos +
                     ' AND A.CIAID=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CIAID').AsString) +
                     ' AND A.DOCID=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('DOCID').AsString) +
                     ' AND A.CCSERIE=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                     ' AND A.CCNODOC=' + QuotedStr(dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                     ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
                  sDoc := dbgEst4.DataSource.DataSet.FieldByName('DOCID').AsString;
                  sDocAbr := dbgEst4.DataSource.DataSet.FieldByName('DOCABR').AsString;
                  sSerie := dbgEst4.DataSource.DataSet.FieldByName('CCSERIE').AsString;
                  sNoDoc := dbgEst4.DataSource.DataSet.FieldByName('CCNODOC').AsString;
                  sMon := dbgEst4.DataSource.DataSet.FieldByName('TMONABR').AsString;
                  If dbgEst4.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                  Begin
                     fImp := dbgEst4.DataSource.DataSet.FieldByName('CCMTOLOC').AsFloat;
                     fSal := dbgEst4.DataSource.DataSet.FieldByName('CCSALLOC').AsFloat;
                  End
                  Else
                  Begin
                     fImp := dbgEst4.DataSource.DataSet.FieldByName('CCMTOEXT').AsFloat;
                     fSal := dbgEst4.DataSource.DataSet.FieldByName('CCSALEXT').AsFloat;
                  End;
               End
               Else
                  If (xPopup = '5') Then
                  Begin
                     lblDocumento.caption := dbgEst5.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                        dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                        dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                        'MONTO ORIGINAL: ' +
                        dbgEst5.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                        floattostrf(dbgEst5.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

                     c := c + ' WHERE E.TMONID=A.TMONID and C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC''' +
                        ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' + xDocumentos +
                        ' AND A.CIAID=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CIAID').AsString) +
                        ' AND A.DOCID2=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('DOCID').AsString) +
                        ' AND A.CCSERIE2=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                        ' AND A.CCNODOC2=' + QuotedStr(dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                        ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
                     sDoc := dbgEst5.DataSource.DataSet.FieldByName('DOCID').AsString;
                     sDocAbr := dbgEst5.DataSource.DataSet.FieldByName('DOCABR').AsString;
                     sSerie := dbgEst5.DataSource.DataSet.FieldByName('CCSERIE').AsString;
                     sNoDoc := dbgEst5.DataSource.DataSet.FieldByName('CCNODOC').AsString;
                     sMon := dbgEst5.DataSource.DataSet.FieldByName('TMONABR').AsString;
                     If dbgEst5.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                     Begin
                        fImp := dbgEst5.DataSource.DataSet.FieldByName('CCMTOLOC').AsFloat;
                        fSal := dbgEst5.DataSource.DataSet.FieldByName('CCSALLOC').AsFloat;
                     End
                     Else
                     Begin
                        fImp := dbgEst5.DataSource.DataSet.FieldByName('CCMTOEXT').AsFloat;
                        fSal := dbgEst5.DataSource.DataSet.FieldByName('CCSALEXT').AsFloat;
                     End;
                  End
                  Else
                     If (xPopup = '6') Then
                     Begin
                        lblDocumento.caption := dbgEst6.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
                           dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
                           dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString + ' ' +
                           'MONTO ORIGINAL: ' +
                           dbgEst6.DataSource.DataSet.FieldByName('TMONABR').AsString + ' ' +
                           floattostrf(dbgEst6.DataSource.DataSet.FieldByName('CCMTOORI').AsFloat, ffNumber, 15, 2);

                        c := c + ' WHERE E.TMONID=A.TMONID and C.DOCID=A.DOCID2 AND C.DOCMOD=''CXC''' +
                           ' AND B.DOCID=A.DOCID AND B.DOCMOD = ''CXC'' ' + xDocumentos +
                           ' AND A.CIAID=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CIAID').AsString) +
                           ' AND A.DOCID2=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('DOCID').AsString) +
                           ' AND A.CCSERIE2=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString) +
                           ' AND A.CCNODOC2=' + QuotedStr(dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString) +
                           ' AND A.CLIEID = ' + QuotedStr(dblcClie.text);
                        sDoc := dbgEst6.DataSource.DataSet.FieldByName('DOCID').AsString;
                        sDocAbr := dbgEst6.DataSource.DataSet.FieldByName('DOCABR').AsString;
                        sSerie := dbgEst6.DataSource.DataSet.FieldByName('CCSERIE').AsString;
                        sNoDoc := dbgEst6.DataSource.DataSet.FieldByName('CCNODOC').AsString;
                        sMon := dbgEst6.DataSource.DataSet.FieldByName('TMONABR').AsString;
                        If dbgEst6.DataSource.DataSet.FieldByName('TMONID').AsString = DMCXC.wTMonLoc Then
                        Begin
                           fImp := dbgEst6.DataSource.DataSet.FieldByName('CCMTOLOC').AsFloat;
                           fSal := dbgEst6.DataSource.DataSet.FieldByName('CCSALLOC').AsFloat;
                        End
                        Else
                        Begin
                           fImp := dbgEst6.DataSource.DataSet.FieldByName('CCMTOEXT').AsFloat;
                           fSal := dbgEst6.DataSource.DataSet.FieldByName('CCSALEXT').AsFloat;
                        End;
                     End;
      End;
   dbgHist.DataSource := Nil;
   dbgHist.Selected.Clear;
   dbgHist.Selected.Add('CIAID'#9'4'#9'Cia.'#9'F');
   If (xPopup = '5') Or (xPopup = '6') Then
   Begin
      dbgHist.Selected.Add('DOCABR'#9'10'#9'Documento'#9'F');
      dbgHist.Selected.Add('CCSERIE'#9'5'#9'Serie'#9'F');
      dbgHist.Selected.Add('CCNODOC'#9'13'#9'Número~Documento'#9'F');
   End
   Else
   Begin
      dbgHist.Selected.Add('DOCABR2'#9'10'#9'Documento'#9'F');
      dbgHist.Selected.Add('CCSERIE2'#9'5'#9'Serie'#9'F');
      dbgHist.Selected.Add('CCNODOC2'#9'13'#9'Número~Documento'#9'F');
   End;

   dbgHist.Selected.Add('TCANJEID'#9'5'#9'Canje'#9'F');
   dbgHist.Selected.Add('CCFCANJE'#9'10'#9'Fecha~Canje'#9'F');
   dbgHist.Selected.Add('TMONDES'#9'6'#9'Moneda'#9'F');
//   dbgHist.Selected.Add('DCCMTOORI'#9'9'#9'Importe~Original'#9'F');
   dbgHist.Selected.Add('DCCMTOLOC'#9'9'#9'Importe~(MN)'#9'F');
   dbgHist.Selected.Add('DCCMTOEXT'#9'9'#9'Importe~(ME)'#9'F');
   dbgHist.Selected.Add('CCMTOLOC'#9'9'#9'Importe~Equiv. (MN)'#9'F');
   dbgHist.Selected.Add('CCMTOEXT'#9'9'#9'Importe~Equiv. (ME)'#9'F');

   DMCXC.cdsHLetras.Filter := '';
   DMCXC.cdsHLetras.Filtered := False;
   DMCXC.cdsHLetras.indexfieldnames := '';
   DMCXC.cdsHLetras.Close;

   DMCXC.cdsHLetras.DataRequest(c);
   DMCXC.cdsHLetras.Open;

   dbgHist.ColumnByName('DCCMTOEXT').FooterValue := floattostrf(OperClientDataSet(DMCXC.cdsHLetras, 'SUM(DCCMTOEXT)', ''), ffNumber, 15, 2);
   dbgHist.ColumnByName('DCCMTOLOC').FooterValue := floattostrf(OperClientDataSet(DMCXC.cdsHLetras, 'SUM(DCCMTOLOC)', ''), ffNumber, 15, 2);
   dbgHist.ColumnByName('CCMTOEXT').FooterValue := floattostrf(OperClientDataSet(DMCXC.cdsHLetras, 'SUM(CCMTOEXT)', ''), ffNumber, 15, 2);
   dbgHist.ColumnByName('CCMTOLOC').FooterValue := floattostrf(OperClientDataSet(DMCXC.cdsHLetras, 'SUM(CCMTOLOC)', ''), ffNumber, 15, 2);

   TNumericField(DMCXC.cdsHLetras.FieldByName('DCCMTOLOC')).DisplayFormat := '###,###,###,##0.00';
   TNumericField(DMCXC.cdsHLetras.FieldByName('DCCMTOEXT')).DisplayFormat := '###,###,###,##0.00';
   TNumericField(DMCXC.cdsHLetras.FieldByName('CCMTOLOC')).DisplayFormat := '###,###,###,##0.00';
   TNumericField(DMCXC.cdsHLetras.FieldByName('CCMTOEXT')).DisplayFormat := '###,###,###,##0.00';

   If DMCXC.cdsHLetras.IndexFieldNames <> 'CIAID;DOCID;CCSERIE;CCNODOC' Then
      DMCXC.cdsHLetras.IndexFieldNames := 'CIAID;DOCID;CCSERIE;CCNODOC';
//	DMCXC.cdsQry9.MasterSource:=DMCXC.dsQry4;
//	DMCXC.cdsQry9.MasterFields:='CIAID;DOCID;CCSERIE;CCNODOC';

   dbgHist.DataSource := DMCXC.dsHLetras;

   pnlLetras.Visible := True;
   Screen.Cursor := crDefault;
End;

Procedure TFEstCxCli.CanDocuClick(Sender: TObject);
Begin
   xPopup := '3';
   pnlHist.Caption := 'Cancelaciones de Documentos';
   bbtnImprimeAmortiza.visible := True;
   CargaDetalle(' AND ((' + DMCXC.wReplacCeros + '(B.DOCTIPREG,''XX'') <> ''XX'' OR ' +
      DMCXC.wReplacCeros + '(B.DOCTIPREG,''XX'') <> ''CH'') AND B.DOC_FREG = ''P'')');
{ ' AND B.DOCTIPREG<>'+quotedstr('NC')+
              ' AND B.DOC_FREG<>'+quotedstr('H')+
              ' AND B.DOC_FREG<>'+quotedstr('A')+
              ' AND B.DOC_FREG<>'+quotedstr('L'));
}
End;

Procedure TFEstCxCli.CanChDevClick(Sender: TObject);
Begin
   xPopup := '4';
   pnlHist.Caption := 'Cancelaciones de Cheques';
   bbtnImprimeAmortiza.visible := True;
   CargaDetalle(' AND B.DOC_FREG=' + quotedstr('H'));
End;

Procedure TFEstCxCli.CanAntiClick(Sender: TObject);
Begin
   xPopup := '5';
   pnlHist.Caption := 'Cancelaciones de Anticipos';
   bbtnImprimeAmortiza.visible := True;
   CargaDetalle(''); // (' AND B.DOC_FREG='+quotedstr('A'));
End;

Procedure TFEstCxCli.CanNCreClick(Sender: TObject);
Begin
   xPopup := '6';
   pnlHist.Caption := 'Cancelaciones de Notas de Crédito';
   bbtnImprimeAmortiza.visible := True;
   CargaDetalle(''); //(' AND B.DOC_FREG='+quotedstr(wsNCre));
End;

Procedure TFEstCxCli.dbgEst6TitleButtonClick(Sender: TObject; AFieldName: String);
Begin
   pnlBusca1.Visible := True;
   isBusca1.SetFocus;
   CagaBusca(DMCXC.dsQRY6);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsQRY6.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.dbgEst5TitleButtonClick(Sender: TObject; AFieldName: String);
Begin
   pnlBusca1.Visible := True;
   isBusca1.SetFocus;
   CagaBusca(DMCXC.dsQRY5);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsQRY5.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.dbgEst7TitleButtonClick(Sender: TObject; AFieldName: String);
Begin
   pnlBusca1.Visible := True;
   CagaBusca(DMCXC.dsQRY14);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsQRY14.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.dbgEst4TitleButtonClick(Sender: TObject; AFieldName: String);
Begin
   pnlBusca1.Visible := True;
   isBusca1.SetFocus;
   CagaBusca(DMCXC.dsQRY7);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsQRY7.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.dbgEst2TitleButtonClick(Sender: TObject; AFieldName: String);
Begin
{   if AfieldName='CCNODOC' then begin
      DMCXC.cdsQry2.IndexFieldNames:='CCNODOC';
   end;
   if AfieldName='CCFEMIS' then begin
      DMCXC.cdsQry2.IndexFieldNames:='CCFEMIS';
   end;
}
   pnlBusca1.Visible := True;
   isBusca1.SetFocus;
   CagaBusca(DMCXC.dsQRY2);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsQRY2.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.dbgEst3TitleButtonClick(Sender: TObject; AFieldName: String);
Begin
{   if AfieldName='CCNODOC' then begin
      DMCXC.cdsQry4.IndexFieldNames:='CCNODOC';
   end;
   if AfieldName='CCFEMIS' then begin
      DMCXC.cdsQry4.IndexFieldNames:='CCFEMIS';
   end;
   if AfieldName='CCFVCMTO' then begin
      DMCXC.cdsQry4.IndexFieldNames:='CCFVCMTO';
   end;}
   pnlBusca1.Visible := True;
   isBusca1.SetFocus;
   CagaBusca(DMCXC.dsQRY4);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsQRY4.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.dbgTodosTitleButtonClick(Sender: TObject; AFieldName: String);
Begin
   pnlBusca1.Visible := True;
   isBusca1.SetFocus;
   CagaBusca(DMCXC.dsReporte);
   isBusca1.SearchField := AFieldName;
   DMCXC.cdsReporte.IndexFieldNames := AFieldName;
End;

Procedure TFEstCxCli.isBusca1Exit(Sender: TObject);
Begin
   pnlBusca1.Visible := False;
   isBusca1.DataSource := Nil;
   isBusca1.SearchField := '';
End;

Procedure TFEstCxCli.CagaBusca(xDataSource: TwwDataSource);
Begin
   isBusca1.DataSource := xDataSource;
End;

Procedure TFEstCxCli.InsertaGrupo;
Var
   sGrupo, sSQL: String;
Begin
{  memGrupo.Lines.Clear;
  sGrupo:=DMCXC.BuscaQry2('dspTGE','TGE204','GRUPOID','CLIEID='+QuotedStr(dblcClie.text),'GRUPOID');
  sSQL:='SELECT CLIEID,CLIERUC,CLIEDES FROM TGE204 WHERE GRUPOID='+QuotedStr(sGrupo)+
        ' and CLIEID<>'+QuotedStr(dblcClie.text);
  DMCXC.cdsQry.close;
  DMCXC.cdsQry.DataRequest(sSQL);
  DMCXC.cdsQry.OPen;
  if DMCXC.cdsQry.RecordCount>0 then
  begin
    DMCXC.cdsQry.First;
    while not DMCXC.cdsQry.EOF do
    begin
      memGrupo.Lines.Add(DMCXC.cdsQry.FieldByName('CLIEID').AsString+' '+DMCXC.cdsQry.FieldByName('CLIEDES').AsString);
      DMCXC.cdsQry.Next;
    end;
  end;}
End;

Procedure TFEstCxCli.dbeTelfMouseMove(Sender: TObject; Shift: TShiftState;
   X, Y: Integer);
Begin
   dbeTelf.Hint := dbeTelf.text;
End;

Procedure TFEstCxCli.bbtnImprimeAmortizaClick(Sender: TObject);
Begin
   If Not DMCXC.cdsCia.Active Then
      DMCXC.cdsCia.Open;

   ppdbAmortiza.DataSource := DMCXC.dsHLetras;
   pprAmortiza.DataPipeline := ppdbAmortiza;
   pprAmortiza.TEMPLATE.FileName := ExtractFilePath(application.ExeName) + wRutaRpt + '\Amortiza.rtm';
   pprAmortiza.template.LoadFromFile;

   pplblCiaAmortiza.Caption := DMCXC.BuscaQry('dspTGE', 'TGE101', 'CIADES', 'CIAID=' + QuotedStr(CiaID), 'CIADES');
   pplblCodigo.Caption := dblcCLIE.Text;
   pplblCliente.Caption := dbeCLIE.Text;
   pplblTDoc.Caption := sDocAbr;
   pplblSerie.Caption := sSerie;
   pplblNoDoc.Caption := sNoDoc;
   pplblMoneda.Caption := sMon;
   pplblImporte.Caption := FloatToStrF(fImp, ffNumber, 15, 2);
   pplblSaldo.Caption := FloatToStrF(fSal, ffNumber, 15, 2);
   If (sDoc = DMCXC.wsNCre) Or (sDoc = DMCXC.wsAnt) Then
   Begin
      ppDBText92.DataField := 'DOCABR';
      ppDBText93.DataField := 'CCSERIE';
      ppDBText94.DataField := 'CCNODOC';
   End
   Else
   Begin
      ppDBText92.DataField := 'DOCABR2';
      ppDBText93.DataField := 'CCSERIE2';
      ppDBText94.DataField := 'CCNODOC2';
   End;

  //ppDesigner1.Show;
   pprAmortiza.Print;
   pprAmortiza.stop;

   pprAmortiza.DataPipeline := Nil;
   ppdbAmortiza.DataSource := Nil;
End;

Procedure TFEstCxCli.dbgHistDblClick(Sender: TObject);
Var
   sSQL: String;
Begin
   Try
      If DMCXC.cdsHLetras.FieldByName('DOCID2').AsString = DMCXC.wsCob Then
      Begin
         sSQL := 'SELECT * FROM CXC320 WHERE CIAID=' + QuotedStr(DMCXC.cdsHLetras.FieldByName('CIAID').AsString) +
            ' AND LICOID=' + QuotedStr(DMCXC.cdsHLetras.FieldByName('CCNODOC2').AsString) +
            ' AND DOCID=' + QuotedStr(DMCXC.cdsHLetras.FieldByName('DOCID').AsString) +
            ' AND CCSERIE=' + QuotedStr(DMCXC.cdsHLetras.FieldByName('CCSERIE').AsString) +
            ' AND CCNODOC=' + QuotedStr(DMCXC.cdsHLetras.FieldByName('CCNODOC').AsString) +
            ' AND CLIEID=' + QuotedStr(DMCXC.cdsHLetras.FieldByName('CLIEID').AsString);
         DMCXC.cdsDetPagoLiq.Close;
         DMCXC.cdsDetPagoLiq.DataRequest(sSQL);
         DMCXC.cdsDetPagoLiq.Open;
         If DMCXC.cdsDetPagoLiq.RecordCount > 0 Then
            pnlDetFPagoLiq.visible := True;

      End;
   Except
   End;
End;

Procedure TFEstCxCli.bbtnCierraDetFPagoLiqClick(Sender: TObject);
Begin
   pnlDetFPagoLiq.visible := False;
End;

Procedure TFEstCxCli.bbtnCierraHistClick(Sender: TObject);
Begin
   pnlLetras.Visible := False;
   bbtnImprimeAmortiza.visible := false;
End;

Procedure TFEstCxCli.DocumentosOrigen1Click(Sender: TObject);
Var
   sSQL: String;
Begin
   Screen.Cursor := crHourGlass;

{  sSQL:=' SELECT CXC304.CIAID,TGE110.DOCABR,CCSERIE,CCNODOC,CCFCANJE FROM CXC304,TGE110 WHERE '+
        ' CIAID='+QuotedStr(DMCXC.cdsQry4.FieldByName('CIAID').AsString)+
        ' AND TCANJEID='+QuotedStr(DMCXC.cdsQry4.FieldByName('TCANJEID').AsString)+
        ' AND CCCANJE='+QuotedStr(DMCXC.cdsQry4.FieldByName('CCCANJE').AsString)+
        ' AND TGE110.DOCID=CXC304.DOCID AND TGE110.DOCMOD=''CXC'' ';}
{   sSQL:=' SELECT CXC304.CIAID,TGE110.DOCABR,CCSERIE,CCNODOC,CCFCANJE FROM CXC304 '+
         ' LEFT JOIN CXC307 ON '+
         ' CXC307.CIAID=CXC304.CIAID AND CXC307.CANJE=CXC304.CCCANJE AND CXC307.TCANJEID=CXC304.TCANJEID '+
         ' ,TGE110 WHERE '+
         ' CXC304.CIAID='+QuotedStr(DMCXC.cdsQry4.FieldByName('CIAID').AsString)+
         ' AND CXC304.DOCID='+QuotedStr(DMCXC.cdsQry4.FieldByName('DOCID').AsString)+
         ' AND CCSERIE=''000'' AND CCNODOC='+QuotedStr(DMCXC.cdsQry4.FieldByName('CCNODOC').AsString)+
         ' AND CJESTADO<>''A'' AND TGE110.DOCID=CXC304.DOCID AND TGE110.DOCMOD=''CXC'' ';
 }
   If (DMCXC.SRV_D = 'DB2NT') Or (DMCXC.SRV_D = 'DB2400') Then
   Begin
      sSQL := ' SELECT CXC301.CIAID,TGE110.DOCABR,CXC301.CCSERIE,CXC301.CCNODOC,CXC304.CCCANJE,CXC304.CCFCANJE,CXC307.CJESTADO ' +
         ' FROM CXC301 ' +
         ' LEFT JOIN TGE110 ON TGE110.DOCID=CXC301.DOCID ' +
         ' LEFT JOIN CXC304 ON CXC304.CIAID=CXC301.CIAID AND CXC304.CCCANJE=CXC301.CCCANJE AND CXC304.TCANJEID=CXC301.TCANJEID ' +
         ' LEFT JOIN CXC307 ON CXC307.CIAID=CXC304.CIAID AND CXC307.CANJE=CXC304.CCCANJE AND CXC307.TCANJEID=CXC304.TCANJEID ' +
         ' WHERE ' +
         ' CXC304.CIAID=' + QuotedStr(DMCXC.cdsQry4.FieldByName('CIAID').AsString) +
         ' AND CXC304.DOCID=' + QuotedStr(DMCXC.cdsQry4.FieldByName('DOCID').AsString) +
         ' AND CXC304.CCSERIE=''000'' AND CXC304.CCNODOC=' + QuotedStr(DMCXC.cdsQry4.FieldByName('CCNODOC').AsString) +
         ' AND TGE110.DOCMOD=''CXC'' AND CJESTADO<>''A'' ';

   End;
   If (DMCXC.SRV_D = 'ORACLE') Then
   Begin
      sSQL := ' SELECT CXC301.CIAID,TGE110.DOCABR,CXC301.CCSERIE,CXC301.CCNODOC,CXC304.CCCANJE,CXC304.CCFCANJE,CXC307.CJESTADO ' +
         ' FROM CXC301,TGE110,CXC304,CXC307 WHERE ' +
         ' TGE110.DOCID(+)=CXC301.DOCID AND ' +
         ' CXC304.CIAID(+)=CXC301.CIAID AND CXC304.CCCANJE(+)=CXC301.CCCANJE AND CXC304.TCANJEID(+)=CXC301.TCANJEID AND ' +
         ' CXC307.CIAID(+)=CXC304.CIAID AND CXC307.CANJE(+)=CXC304.CCCANJE AND CXC307.TCANJEID(+)=CXC304.TCANJEID AND ' +
         ' CXC304.CIAID=' + QuotedStr(DMCXC.cdsQry4.FieldByName('CIAID').AsString) +
         ' AND CXC304.DOCID=' + QuotedStr(DMCXC.cdsQry4.FieldByName('DOCID').AsString) +
         ' AND CXC304.CCSERIE=''000'' AND CXC304.CCNODOC=' + QuotedStr(DMCXC.cdsQry4.FieldByName('CCNODOC').AsString) +
         ' AND TGE110.DOCMOD=''CXC'' AND CJESTADO<>''A'' ';
   End;

   dbgHist.Selected.Clear;
   dbgHist.DataSource := Nil;
   DMCXC.cdsHLetras.Filter := '';
   DMCXC.cdsHLetras.Filtered := False;
   DMCXC.cdsHLetras.indexfieldnames := '';

   DMCXC.cdsHLetras.Close;
   DMCXC.cdsHLetras.DataRequest(sSQL);
   DMCXC.cdsHLetras.Open;

   Try
      dbgHist.Selected.Add('DOCABR'#9'5'#9'Documento'#9'F');
      dbgHist.Selected.Add('CCSERIE'#9'5'#9'Serie'#9'F');
      dbgHist.Selected.Add('CCNODOC'#9'10'#9'Número'#9'F');
      dbgHist.Selected.Add('CCCANJE'#9'10'#9'Canje'#9'F');
      dbgHist.Selected.Add('CCFCANJE'#9'10'#9'Fecha~Canje'#9'F');
      dbgHist.DataSource := DMCXC.dsHLetras;
      pnlHist.Caption := 'Documentos de Compromiso ';
      lblDocumento.caption := dbgEst3.DataSource.DataSet.FieldByName('DOCABR').AsString + ' ' +
         dbgEst3.DataSource.DataSet.FieldByName('CCSERIE').AsString + ' ' +
         dbgEst3.DataSource.DataSet.FieldByName('CCNODOC').AsString;

      pnlLetras.Visible := True;
      Screen.Cursor := crDefault;

   Finally
      dbgHist.Selected.Clear;
      dbgHist.Selected.Add('CCHIST'#9'4'#9'No.'#9'F');
      dbgHist.Selected.Add('CCFSITUA'#9'10'#9'Fecha~Cambio'#9'F');
      dbgHist.Selected.Add('UBICA'#9'13'#9'Ubicación'#9'F');
      dbgHist.Selected.Add('SITUA'#9'13'#9'Situación'#9'F');
      dbgHist.Selected.Add('CCFEMIS'#9'10'#9'Fecha~Emisión'#9'F');
      dbgHist.Selected.Add('CCFVCMTO'#9'10'#9'Fecha~Vencimiento'#9'F');
      dbgHist.Selected.Add('CCTCAMPR'#9'6'#9'Tipo~Cambio'#9'F');
      dbgHist.Selected.Add('CCMTOLOC'#9'9'#9'Importe~(MN)'#9'F');
      dbgHist.Selected.Add('CCMTOEXT'#9'9'#9'Importe~(ME)'#9'F');
      dbgHist.Selected.Add('CCUSER'#9'6'#9'Usuario'#9'F');
      dbgHist.Selected.Add('CCFREG'#9'10'#9'Fecha ~Reg.'#9'F');
      dbgHist.Selected.Add('CCHREG'#9'10'#9'Hora ~Reg.'#9'F');
   End;

End;

Procedure TFEstCxCli.FormCreate(Sender: TObject);
Begin
   CargaDataSource;
End;

Procedure TFEstCxCli.CargaDataSource;
Begin
   dbeCLIE.DataSource := DMCXC.dsCxC;
   dbeDirec.DataSource := DMCXC.dsCxC;
   dbeDistrito.DataSource := DMCXC.dsCxC;
   dbeTelf.DataSource := DMCXC.dsCxC;
   dbeZonaVta.DataSource := DMCXC.dsCxC;
   dbeSectorVta.DataSource := DMCXC.dsCxC;
   dbeLCredito.DataSource := DMCXC.dsCxC;
   dblcClie.DataSource := DMCXC.dsCxC;
   dbeComment.DataSource := DMCXC.dsCxC;
   dbgDetPagoLiq.DataSource := DMCXC.dsDetPagoLiq;
   ppDBPipelineF.DataSource := DMCXC.dsQry2;
   ppDBPipelineL.DataSource := DMCXC.dsQry4;
   ppDBPipelineN.DataSource := DMCXC.dsQry6;
   ppdbp1.DataSource := DMCXC.dsQry2;
   ppDBPipelineC.DataSource := DMCXC.dsQry7;
   ppDBPipelineA.DataSource := DMCXC.dsQry5;
   ppDBPipelineDF.DataSource := DMCXC.dsQry8;
   ppDBPipelineDL.DataSource := DMCXC.dsQry9;
End;

End.

