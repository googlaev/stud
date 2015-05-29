unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ValEdit, Grids,lazutf8,Unit2,Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

var    id: array [0..9999] of string;
       q,k,j,i: integer;
      z, s: string;

begin
//Memo1.Clear;
j := 0;
//if Length(Edit1.Text) <> 0 then begin   Length(S)   Copy(Source, 3, 4);

        for i:= 0 to ListBox2.Items.Count-1 do begin

          z := Copy(ListBox2.Items.Strings[i],0,Length( Edit1.Text));
            if z = Edit1.Text then
                                                          begin

                                                            //s:= s + '!' +ListBox2.Items.Strings[i];
                                                            // ListBox2.Items.Delete(i);
                                                            id[j]:=ListBox2.Items.Strings[i];
                                                            j := j+1;
                                                         // s := s + IntToStr(i)+  ;
                                                         // ListBox2.Items.Delete(i);
                                                          end
            //else    ListBox2.Items.Delete(id[i]);

        end;
        ListBox2.Clear;
        for k:=0 to j do begin
            ListBox2.Items.Add(id[k]);

        end;
        //ShowMessage (s);

end;



procedure TForm1.Button2Click(Sender: TObject);
var a:string;
begin
 a:='./student/'+ListBox2.Items[ListBox2.ItemIndex]+'.xml';
//s:= './student/'+ ListBox2.Items[ListBox1.ItemIndex]+'.xml';
StringGrid1.SaveToFile(a);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form2.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
var a:string;
begin
  try
  a :='./list_grup/'+Form1.ListBox1.Items[ListBox1.ItemIndex]+'.txt';
  form3.Memo1.Lines.LoadFromFile(a);
  Form3.Show;

   except
   ShowMessage ('не заполнен');
   Form3.Show;
end;



end;

procedure TForm1.Button5Click(Sender: TObject);
var a:string;
begin
   a:='./list_grup/'+ListBox1.Items[ListBox1.ItemIndex]+'.txt';
   form3.Memo1.Lines.SaveToFile(a);
   ListBox1.Items.LoadFromFile('list_grup.txt');



end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ListBox1.Items.LoadFromFile('list_grup.txt');





end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox1Click(Sender: TObject);
var a:String;
begin
   try
   a:='./list_grup/'+ListBox1.Items[ListBox1.ItemIndex]+'.txt' ;
   ListBox2.Items.LoadFromFile(a);

   except
   ShowMessage ('нет файла');
end;


end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin

end;

procedure TForm1.ListBox2Click(Sender: TObject);

 var a:String;
begin
  try
   a:='./student/'+ListBox2.Items[ListBox2.ItemIndex]+'.xml';
   StringGrid1.LoadFromFile(a);


   except
   ShowMessage ('еще не создан');
end;




  //StringGrid1.Clean();
   //a:='./student/'+ListBox2.Items[ListBox2.ItemIndex]+'.xml';
   //StringGrid1.LoadFromFile(a);
   //ShowMessage (a);
end;



begin
  end.
