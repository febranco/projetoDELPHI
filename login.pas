unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    pnlPrincipal: TPanel;
    imgFundo: TImage;
    pnlLogin: TPanel;
    Image1: TImage;
    txtLogin: TEdit;
    txtSenha: TEdit;
    Image2: TImage;
    Image3: TImage;
    btnLogin: TSpeedButton;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    procedure centralizarPainel;
    procedure login;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Menu;

procedure TFrmLogin.centralizarPainel;
begin
  //codigo para centralizar a tela de login
  PnlLogin.Top := (self.Height div 2) - (PnlLogin.Height div 2);
  PnlLogin.Left := (self.Width div 2) - (PnlLogin.Width div 2);
end;

procedure TFrmLogin.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
       centralizarPainel;
end;

procedure TFrmLogin.login;
begin
//aqui codigo de login

FrmMenu  := TFrmMenu.Create(FrmLogin) ;
FrmMenu.ShowModal;
end;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
if Trim(Txtlogin.Text) = '' then
  begin
            MessageDlg ('Preencha o usu�rio!', mtInformation, mbOkCancel, 0);
            txtlogin.SetFocus;
            exit;
  end;
  if Trim(TxtSenha.Text) = '' then
  begin
            MessageDlg ('Preencha a senha!', mtInformation, mbOkCancel, 0);
            txtSenha.SetFocus;
            exit;
  end;
    login;
end;

end.
