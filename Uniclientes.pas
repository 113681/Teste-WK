unit Uniclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.Buttons, Vcl.DBActns, Vcl.ExtCtrls;

type
  TF_clientes = class(TForm)
    pg_clientes: TPageControl;
    tb_consultar: TTabSheet;
    tab_cadastrar: TTabSheet;
    DBG_clientes: TDBGrid;
    txt_buscar: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DS_clientes_cad: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    acm_clientes: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    btn_novo: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_gravar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_apagar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    bt_editar_selecionar: TSpeedButton;
    RG_buscar: TRadioGroup;
    Label5: TLabel;
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_editar_selecionarClick(Sender: TObject);
    procedure txt_buscarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_clientes: TF_clientes;

implementation

{$R *.dfm}

uses dmdados;

procedure TF_clientes.bt_editar_selecionarClick(Sender: TObject);
begin
// Selecionar Produto para Editar
  dmdados1.tb_clientes.Locate ('cli_id', dmdados1.SQL_clientescli_id.Value, []);
  pg_clientes.ActivePage := tab_cadastrar;

end;

procedure TF_clientes.FormClick(Sender: TObject);
 begin
  F_clientes := nil;
 end;

procedure TF_clientes.FormCreate(Sender: TObject);
begin
   dmdados1.SQL_clientes.open();
   dmdados1.tb_clientes.Active := true;
   pg_clientes.ActivePage := tb_consultar;

end;

procedure TF_clientes.txt_buscarKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then

  begin
   with dmdados1.SQL_clientes do

    begin
      close;
      sql.Clear;
      sql.Add('select * from clientes');

      case RG_buscar.ItemIndex of

    0: sql.Add('where cli_nome like :nome');

    end;

     ParamByName('nome').Value := txt_buscar.Text + '$';

     open;

     if RecordCount = 0 then
     ShowMessage('Cliente não encontrado');



    end;


  end;

end;

end.
