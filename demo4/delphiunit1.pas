{ This demo calls a function inside an exe. The exe causes an exception. Since
  the exception is caught in the exe (where it occurred) it works }

unit delphiunit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    BONUS_Ucker_Fay_Aggot_Fay: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BONUS_Ucker_Fay_Aggot_FayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  exe = 'laz.exe';

// Import function from exe
procedure ExeCode; stdcall; external exe;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage('Function in Lazarus exe called from dll: ');
  // an exception is generated in the exe, but caught before it reaches here
  ExeCode;
end;

procedure TForm1.BONUS_Ucker_Fay_Aggot_FayClick(Sender: TObject);
begin
  showmessage('I stupid woman play mind game, get no boy I want? Me no figure strategy of future? Dumb beetches be beetches? I dumb wape golf? Retardee friend cheat on?');
  showmessage('Anis Ann say: I mind game plays! My daughter stupids? Has 24 fakes and dumb bos? I visits stupids societies of ALbErts! My partner is homo?');
  showmessage('Who say false Christian? Satan play mind game? I spits in foods if yous no dates me? we married? Join stupids societies? Laugh at childs wapes by gays? It delusions! It delusions!');
  showmessage('Harper False Christian it say? We goes to hells? Makes spirits flies bigs! We likes crosses of falses christians tattooed!@@@!!');
end;

end.
