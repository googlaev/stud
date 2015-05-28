unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1StartDrag(Sender: TObject; var DragObject: TDragObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin
     Memo1.Lines.LoadFromFile('./list_grup.txt');
end;

procedure TForm2.Memo1Change(Sender: TObject);
begin




end;

procedure TForm2.Memo1StartDrag(Sender: TObject; var DragObject: TDragObject);
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Memo1.Lines.SaveToFile('./list_grup.txt');
  form2.Close;
end;

end.

