unit Lab07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  a: array of real;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
  ss, rs: AnsiString;
  i, x: integer;

begin
  ss :=  Edit1.Text;
  SetLength(a, length(ss));
  SetLength(rs, length(ss));
  a[0] := 0.01;

  x :=  length(a);

  for i := 1 to length(ss) - 1 do
  begin
    a[i] := 1 - 2 * abs(a[i - 1]);

  end;




  //Edit2.Text := 'Hello'; {������ ������ ������ � Edit}
  //IntToStr(Ord(A)){������ ������ � ASCII}
  //Char(A){ASCII � �������}


  for i := 0 to length(ss) - 1  do
    rs[i] := AnsiChar((ord(ss[i]) + round(a[i] * 100)));

  Edit2.Text := rs;







end;






end.
