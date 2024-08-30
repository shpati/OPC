unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure Calculate(Sender: TObject);
    procedure KeyPress(Sender: TObject; var Key: Char);
    procedure KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function CND(x: Double): Double;
function BlackScholes(OptionType: string; S, K, T, r, sigma: Double): Double;

const
  TwoOverSqrtPi = 1.1283791670955125738961589031215;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function CND(x: Double): Double;
var
  L, K : Double;

const
  a1 = 0.31938153;
  a2 = -0.356563782;
  a3 = 1.781477937;
  a4 = -1.821255978;
  a5 = 1.330274429;

begin
  L := Abs(X);
  K := 1 / (1 + 0.2316419 * L);
  Result := 1 - 1 / SqRt(2 * Pi) * Exp(-Power(L, 2) / 2)
            * (a1 * K + a2 * Power(K, 2) + a3 * Power(K, 3)
            + a4 * Power(K, 4) + a5 * Power(K, 5));
  if X < 0 then
    Result := (1 - Result)
end;

function BlackScholes(OptionType: string; S, K, T, r, sigma: Double): Double;
var
  d1, d2: Double;
begin
  Result := 0;
  d1 := (LN(S / K) + (r + Power(sigma, 2) / 2) * T) / (sigma * SqRt(T));
  d2 := d1 - sigma * SqRt(T);
  if OptionType = 'call' then
    Result := S * CND(d1) - K * Exp(-r * T) * CND(d2)
  else if OptionType = 'put' then
    Result := K * Exp(-r * T) * CND(-d2) - S * CND(-d1);
end;

procedure TForm1.KeyPress(Sender: TObject; var Key: Char);
begin
  // Allow only numeric input
  if Key = ',' then
    Key := '.';
  if not (Key in ['0'..'9', '.']) and not (Ord(Key) = VK_BACK) then
    Key := #0; // Suppress the key
end;

procedure TForm1.Calculate(Sender: TObject);
var
  S, K, T, r, sigma, OptionPrice: Double;
begin
  S := StrtoFloat(Edit1.Text); // Current stock price
  K := StrtoFloat(Edit2.Text); // Option strike price
  T := StrtoFloat(Edit3.Text); // Time to expiration in years
  r := StrtoFloat(Edit4.Text) / 100; // Risk-free interest rate
  sigma := StrtoFloat(Edit5.Text) / 100; // Volatility of the underlying stock

  Edit6.Text := Floattostr(BlackScholes('call', S, K, T, r, sigma));
  Edit7.Text := Floattostr(BlackScholes('put', S, K, T, r, sigma));
end;

procedure TForm1.KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Edit1.Text = '')
  or (Edit2.Text = '')
  or (Edit3.Text = '')
  or (Edit4.Text = '')
  or (Edit5.Text = '')
  then
  begin
    Edit6.Text := '';
    Edit7.Text := '';
  end else Calculate(Self);
end;

end. 
