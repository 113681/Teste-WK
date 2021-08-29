unit uniprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cdastro1: TMenuItem;
    mclientes: TMenuItem;
    mprodutos: TMenuItem;
    Sistema1: TMenuItem;
    Ajustes1: TMenuItem;
    Ajustes2: TMenuItem;
    FlowPanel1: TFlowPanel;
    product1: TSpeedButton;
    clientes1: TSpeedButton;
    PedidosVendas1: TMenuItem;
    DadosGerais1: TMenuItem;
    PedidosdeVendas1: TMenuItem;
    Fechar1: TMenuItem;
    procedure Produtos3Click(Sender: TObject);
    procedure mclientesClick(Sender: TObject);
    procedure clientes1Click(Sender: TObject);
    procedure mprodutosClick(Sender: TObject);
    procedure product1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmprincipal: TFrmprincipal;

implementation

{$R *.dfm}

uses Uniclientes, Uniprodutos, dmdados;

procedure TFrmprincipal.clientes1Click(Sender: TObject);
 begin

  mclientes.Click;

 end;

procedure TFrmprincipal.Fechar1Click(Sender: TObject);
begin
close;
end;

procedure TFrmprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
 begin

  F_clientes := nil;

 end;

procedure TFrmprincipal.mclientesClick(Sender: TObject);
begin
 // Chamar o Form Clientes

 if F_clientes = nil then
 F_clientes := TF_clientes.Create(self);
 F_clientes.ShowModal;

end;

procedure TFrmprincipal.mprodutosClick(Sender: TObject);
 begin
  if F_produtos = nil then
  F_produtos := TF_produtos.Create(self);
  F_produtos.ShowModal;

 end;

procedure TFrmprincipal.product1Click(Sender: TObject);
 begin

  mprodutos.click;

 end;

procedure TFrmprincipal.Produtos3Click(Sender: TObject);
 begin
  close;
 end;

end.
