{ This demo shows that an exception works, so long as the DLL code executes
  the code which raises the exception, and no Exe code interacts with the DLL
  code to call the exception.  The DLL form button is clicked, so the dll
  is raising an exception and no exe interaction occurs, the exe only loads
  the dll form initially with the buttons. }

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
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  showmessage('Jenny Fennyshak Says: I wape guys and dumb friend Sauna? My bet frind had weiner and wape brodder??');
  showmessage('Dwayne Martins mental retard kay? It all good?');
  showmessage('Huston Say: there a problem? I idiot? Is problem. May I fired?');
  showmessage('Lobo Say: I have hearts tacks? Becuz i is stupids? I coughed on all my lies, Jesus punishes?');
  showmessage('Dufault change name Dufaggs? Goods choices is chosens morons');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FreeForm;
end;

end.

