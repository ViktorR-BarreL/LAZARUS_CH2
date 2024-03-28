unit TreugolnikUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;  a, u, c, h, s: double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  c:= strtofloat(edit1.text);
  u:= strtofloat(edit2.Text);
  if (c <= 0) or (u <= 0) then
  begin
  label8.Caption:='Решения нет';
  label9.Caption:='Решения нет';
  end
  else
  begin
  u:= u * Pi / 180;
  h:= (c/2) * sin(u)/cos(u);
  s:= (h * c) / 2;
  a:= sqrt( power(h, 2) + (power((c/2), 2)));
  s:= roundto(s, -3);
  a:= roundto(a, -3);
  label8.Caption:=floattostr(s);
  label9.Caption:=floattostr(a);
  end;
end;

end.

