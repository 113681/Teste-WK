unit Uniprodutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.Buttons, Vcl.DBActns;

type
  TF_produtos = class(TForm)
    stb_produtos: TStatusBar;
    PG_produtos: TPageControl;
    tb_consultar: TTabSheet;
    DBG_produtos: TDBGrid;
    tb_cadastrar: TTabSheet;
    Label1: TLabel;
    txt_buscar: TEdit;
    RG_buscar: TRadioGroup;
    DS_produtos_cad: TDataSource;
    ACM_produtos: TActionManager;
    ac_novo: TDataSetInsert;
    ac_delete: TDataSetDelete;
    ac_editar: TDataSetEdit;
    ac_ok: TDataSetPost;
    ac_cancelar: TDataSetCancel;
    btn_novo: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_ok: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_delete: TSpeedButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    bt_editar_produto: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_editar_produtoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_produtos: TF_produtos;

implementation

{$R *.dfm}

uses dmdados;

procedure TF_produtos.bt_editar_produtoClick(Sender: TObject);
begin

 // Selecionar Produto para Editar
  dmdados.dmdados1.TB_produtos.Locate ('pro_id', dmdados1.SQL_Produtospro_id.Value, []);
  PG_produtos.ActivePage := tb_cadastrar;

end;

procedure TF_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
 begin
  F_produtos :=nil;

 end;

procedure TF_produtos.FormCreate(Sender: TObject);
 begin
  // ativa a tb produtos
  dmdados.dmdados1.SQL_Produtos.Open();
  // seta para iniciar na tela consultar
  dmdados.dmdados1.TB_produtos.Active := True;
  PG_produtos.ActivePage := tb_consultar;

 end;

end.
