unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    fornecedor1: TMenuItem;
    fornecedor2: TMenuItem;
    funcionario1: TMenuItem;
    funcionario2: TMenuItem;
    Movimentao1: TMenuItem;
    Movimentao2: TMenuItem;
    Sair1: TMenuItem;
    cargo1: TMenuItem;
    vendas1: TMenuItem;
    movimentao3: TMenuItem;
    movimentao4: TMenuItem;
    Pagmantos1: TMenuItem;
    procedure Cadastro2Click(Sender: TObject);
    procedure funcionario1Click(Sender: TObject);
    procedure cargo1Click(Sender: TObject);
    procedure vendas1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses usuarios, funcionarios, cargos, vendas;


procedure TFrmMenu.Cadastro2Click(Sender: TObject);
begin
    Frmusuario := TFrmusuario.Create(self);
    Frmusuario.ShowModal;

end;

procedure TFrmMenu.cargo1Click(Sender: TObject);
begin
    FrmCargos := TFrmCargos.Create(self);
    FrmCargos.ShowModal;
end;

procedure TFrmMenu.funcionario1Click(Sender: TObject);
begin
    Frmfuncionarios := TFrmfuncionarios.Create(self);
    Frmfuncionarios.ShowModal;
end;

procedure TFrmMenu.vendas1Click(Sender: TObject);
begin
   FrmVendas := TFrmVendas.Create(self);
    FrmVendas.ShowModal;

end;

end.
