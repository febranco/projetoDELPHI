unit cargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmCargos = class(TForm)
    txtnome: TLabel;
    txtName: TEdit;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btnExcluir: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure associarCampos;
  public
    { Public declarations }
  end;

var
  FrmCargos: TFrmCargos;

implementation

{$R *.dfm}

uses modulo;

procedure TFrmCargos.associarCampos;
begin
dm.tb_Cargos.FieldByName('cargo').Value := txtName.Text;
end;

procedure TFrmCargos.btnNovoClick(Sender: TObject);
begin
btnSalvar.Enabled := True;
txtName.Enabled := True;
txtName.Text := '';
txtName.setFocus;

dm.tb_Cargos.Insert;
end;

procedure TFrmCargos.btnSalvarClick(Sender: TObject);
begin
if txtName.Text = '' then
  begin
   messageDlg('Preencha o Cargo', mtInformation, mbOkCancel, 0);
   txtName.SetFocus;
    exit;
  end;

// VERIFICAR SE O CARGO JA ESTA CADASTRADO
  dm.query_cargos.SQL.Clear;
  dm.query_cargos.SQL.Add('select cargo from cargos where = ' +txtName.Text) ;

  associarCampos;
  dm.tb_Cargos.Post;
  MessageDlg('Salvo com sucesso.', mtInformation, mbOkCancel, 0 );
end;

procedure TFrmCargos.FormCreate(Sender: TObject);
begin
  dm.tb_Cargos.Active := true;
end;

end.
