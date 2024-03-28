unit unitFunctionCalc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;


const
  E = 2.718281828459045;
var
  Form1: TForm1;  a, b, t, f: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
 memo1.clear;
 if (edit1.text<>'') or (edit2.text<>'') or (edit3.Text<>'')
 then begin
      a:= strtofloat(Edit1.text);
      b:= strtofloat(Edit2.text);
      t:= strtofloat(Edit3.text);
      f:= exp(-b*t) * sin(a*t + b) - sqrt(abs(b*t + a));
      memo1.lines.add('f = '+floattostr(f));
      end
 else memo1.Lines.Add('Введите параметры!!! >:(');
 end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memo1.clear;
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.

