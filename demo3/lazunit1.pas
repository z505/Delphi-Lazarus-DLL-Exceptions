{ This demo shows that catching an exception that occured in a DLL works, so
  long as the DLL catches the exception, and not the exe. }

unit lazunit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

const
  DLL = 'delphicode.dll';

// Delphi DLL functions
procedure CallDelphiCode; stdcall; external DLL;
procedure CreateForm; stdcall; external DLL;
procedure FreeForm; stdcall; external DLL;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  CreateForm;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage('Robyn Say: I incest? I have moron intelli-jennysenses, I like beast wapes?');
  showmessage('Dwayne Martins say: I watch wapes I like beasty in bush?');
  showmessage('Natalie Lardfats: I pedo, me wapes 12s years kids, Stupids Societies Ofs Alberts?');
  showmessage('Lobo Say: it helps socializes withs retardees! Joins Nons Profits Clubs. EXERICIZES!');
  showmessage('Obikoya JOINS conversations:  !!! Hi, me compulsives liars, TRUST!!! TRUST your wapists! ALL delusion. All delusion. Trusts! Me like trust wapists');
  showmessage('SMARTY: Ginger trust, no trust wapist stupids. Dumb psychs, dumb psychs.. Roasted in hell. Makes butt of psych? Vallabh eats diarhea on floor?');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FreeForm;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  // call function in DLL which throws exception, but catch it in DLL instead of
  // in exe, to not allow code to reach exe
  CallDelphiCode;
end;

end.

