unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DOLAR: TEdit;
    CONVERTER: TButton;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    COMPRA: TButton;
    MSG: TLabel;
    procedure CONVERTERClick(Sender: TObject);
    procedure COMPRAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  varreal : real;
  varnome : STRING;











implementation

{$R *.dfm}

procedure TForm1.COMPRAClick(Sender: TObject);
begin
    varnome := INPUTBOX ('Nome','Digite seu nome', '');

    if (varnome <> '') and (DOLAR.Text <> '0') then
        Msg.Caption := 'Ol� ' + varnome + ', Voc� comprou ' + DOLAR.Text + ' D�lar(es)'

    else
        showmessage('Falta nome ou quantidade de dolares')
end;

procedure TForm1.CONVERTERClick(Sender: TObject);
begin

 if DOLAR.Text = '' then

    begin
      showmessage('DIGITE VALOR EM DOLAR');
    end

 Else
    begin
      COMPRA.Enabled := True;
      varreal := strtofloat (DOLAR.Text) * 5.12;
      REAL.Text := floattostr (varreal);
    end;



end;




end.
