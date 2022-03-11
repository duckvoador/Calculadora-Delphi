unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMain = class(TForm)
    eValor1: TEdit;
    eValor2: TEdit;
    lValor1: TLabel;
    lValor2: TLabel;
    btAdicao: TButton;
    eValorTotal: TEdit;
    lResultado: TLabel;
    btSubtracao: TButton;
    btDivisão: TButton;
    btMutiplicacao: TButton;
    lTipoCalc: TLabel;
    procedure btDivisãoClick(Sender: TObject);
    procedure btAdicaoClick(Sender: TObject);
    procedure btSubtracaoClick(Sender: TObject);
    procedure btMutiplicacaoClick(Sender: TObject);
    procedure eValor1KeyPress(Sender: TObject; var Key: Char);
    procedure ValidaValorBranco(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}


// PRECESSOS DE BOTOES
procedure TMain.btAdicaoClick(Sender: TObject);
begin
   ValidaValorBranco(Sender);
   eValorTotal.Text := floattostr(strtofloat(eValor1.Text) + strtofloat(eValor2.Text));
end;

procedure TMain.btDivisãoClick(Sender: TObject);
begin
  try
    begin
      lTipoCalc.Caption := 'Adição';
      ValidaValorBranco(Sender);
      eValorTotal.Text := floattostr(strtofloat(eValor1.Text) / strtofloat(eValor2.Text));
    end;
  except
    ShowMessage('Erro ao Dividir');
  end;
end;

procedure TMain.btSubtracaoClick(Sender: TObject);
begin
   lTipoCalc.Caption := 'Subtração';
   ValidaValorBranco(Sender);
   eValorTotal.Text := floattostr(strtofloat(eValor1.Text) - strtofloat(eValor2.Text));
end;

procedure TMain.eValor1KeyPress(Sender: TObject; var Key: Char);
begin
  ValidaValorBranco(Sender);
   if  not ( Key in ['0'..'9', Chr(8), ','] ) then Key := #0;
end;

procedure TMain.btMutiplicacaoClick(Sender: TObject);
begin
  eValorTotal.Text := floattostr(strtofloat(eValor1.Text) * strtofloat(eValor2.Text));
end;




// FUNÇÕES

procedure TMain.ValidaValorBranco(Sender: TObject);
begin
   if eValor1.Text = '' then eValor1.Text := '0';
   if eValor2.Text = '' then eValor2.Text :='0';
end;


end.
