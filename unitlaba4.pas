unit unitlaba4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, MPlayer;

type
  TForm1 = class(TForm)
    timerbackfon: TTimer;
    timerrunner: TTimer;
    img: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure FormActivate(Sender: TObject);
    procedure timerrunnerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
procedure runner_body(a,b:integer;k:real;canvas:TCanvas);
procedure runner_legs1(a,b:integer;k:real;canvas:TCanvas);
procedure runner_arms1(a,b:integer;k:real;canvas:TCanvas);
procedure runner_legs2(c,d:integer;k:real;canvas:TCanvas);
procedure runner_arms2(c,d:integer;k:real;canvas:TCanvas);
procedure runner_legs3(a,b:integer;k:real;canvas:TCanvas);
procedure runner_arms3(a,b:integer;k:real;canvas:TCanvas);
procedure jumper_legs1(c,d:integer;k:real;canvas:TCanvas);
procedure jumper_arms1(c,d:integer;k:real;canvas:TCanvas);
procedure jumper_legs2(c,d:integer;k:real;canvas:TCanvas);
procedure jumper_arms2(c,d:integer;k:real;canvas:TCanvas);
procedure climber_arms1(c,d:integer;k:real;canvas:TCanvas);
procedure climber_arms2(c,d:integer;k:real;canvas:TCanvas);
procedure climber_legs1(c,d:integer;k:real;canvas:TCanvas);
procedure climber_legs2(c,d:integer;k:real;canvas:TCanvas);

implementation


var x,y:integer;
k:real ;
i:integer;
 P,Q:real;
{$R *.dfm}

procedure runner_body(a,b:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
  ellipse(round((a-20)*k*P),round((b-40)*k*Q),round((a+20)*k*P),round(b*k*Q));
  moveto(round(a*k*P),round(b*k*q));
  lineto(round(a*k*P),round((b+60)*k*Q));
  end;
  end;
  procedure runner_legs1(a,b:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
  moveto(round(a*k*P),round((b+60)*k*Q));
  lineto(round((a+20)*k*P),round((b+100)*k*Q));
  lineto(round((a+25)*k*P),round((b+130)*k*Q));
  moveto(round(a*k*P),round((b+60)*k*Q));
  lineto(round((a-5)*k*P),round((b+100)*k*Q));
  lineto(round((a-20)*k*P),round((b+130)*k*Q));
  end;
  end;
  procedure runner_arms1(a,b:integer;k:real;canvas:TCanvas);
  begin
   with canvas do
  begin
  moveto(round(a*k*P),round((b+20)*k*Q));
  lineto(round((a+25)*k*P),round((b+40)*k*Q));
  lineto(round((a+50)*k*P),round((b+25)*k*Q));
  moveto(round(a*k*P),round((b+20)*k*Q));
  lineto(round((a-20)*k*P),round((b+25)*k*Q));
  lineto(round((a-10)*k*P),round((b+60)*k*Q));
  end;
  end;
   procedure runner_legs2(c,d:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
   moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+10)*k*P),round((d+100)*k*Q));
  lineto(round((c+15)*k*P),round((d+130)*k*Q));
  moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+15)*k*P),round((d+90)*k*Q));
  lineto(round((c-20)*k*P),round((d+130)*k*Q));
  end;
  end;
  procedure runner_arms2(c,d:integer;k:real;canvas:TCanvas);
  begin
   with canvas do
  begin
  moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+10)*k*P),round((d+45)*k*Q));
  lineto(round((c+30)*k*P),round((d+25)*k*Q));
  moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c-10)*k*P),round((d+50)*k*Q));
  lineto(round((c+20)*k*P),round((d+45)*k*Q));
  end;
  end;
  procedure runner_legs3(a,b:integer;k:real;canvas:TCanvas);
  begin
   with canvas do
  begin
  moveto(round(a*k*P),round((b+60)*k*Q));
  lineto(round((a-5)*k*P),round((b+100)*k*Q));
  lineto(round((a-15)*k*P),round((b+130)*k*Q));
  moveto(round(a*k*P),round((b+60)*k*Q));
  lineto(round((a+30)*k*P),round((b+70)*k*Q));
  lineto(round((a+40)*k*P),round((b+110)*k*Q));
  end;
  end;
  procedure runner_arms3(a,b:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
  moveto(round(a*k*P),round((b+20)*k*Q));
  lineto(round((a-5)*k*P),round((b+40)*k*Q));
  lineto(round((a+30)*k*P),round((b+35)*k*Q));
  end;
  end;
  procedure jumper_legs1(c,d:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
   moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+40)*k*P),round((d+65)*k*Q));
  lineto(round((c+70)*k*P),round((d+95)*k*Q));
  moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c-15)*k*P),round((d+85)*k*Q));
  lineto(round((c-50)*k*P),round((d+115)*k*Q));
  end;
  end;
  procedure jumper_arms1(c,d:integer;k:real;canvas:TCanvas);
  begin
   with canvas do
  begin
   moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c-25)*k*P),round((d+40)*k*Q));
  lineto(round((c-35)*k*P),round((d+65)*k*Q));
  moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+25)*k*P),round((d+40)*k*Q));
  lineto(round((c+50)*k*P),round((d+25)*k*Q));
  end;
  end;
  procedure jumper_legs2(c,d:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
   moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+95)*k*P),round((d+65)*k*Q));
  moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c-30)*k*P),round((d+85)*k*Q));
  lineto(round((c-75)*k*P),round((d+90)*k*Q));
  end;
  end;
  procedure jumper_arms2(c,d:integer;k:real;canvas:TCanvas);
  begin
   with canvas do
  begin
   moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c-50)*k*P),round((d+25)*k*Q));
  moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+50)*k*P),round((d+25)*k*Q));
  end;
  end;
  procedure climber_arms1(c,d:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
   moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+25)*k*P),round((d+35)*k*Q));
  lineto(round((c+35)*k*P),round((d+15)*k*Q));
  moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+35)*k*P),round((d+5)*k*Q));
  end;
  end;
  procedure climber_arms2(c,d:integer;k:real;canvas:TCanvas);
  begin
     with canvas do
  begin
   moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+25)*k*P),round((d+45)*k*Q));
  lineto(round((c+35)*k*P),round((d+20)*k*Q));
  moveto(round(c*k*P),round((d+20)*k*Q));
  lineto(round((c+25)*k*P),round((d+40)*k*Q));
  lineto(round((c+35)*k*P),round((d+20)*k*Q));
  end;
  end;
   procedure climber_legs1(c,d:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
   moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+25)*k*P),round((d+65)*k*Q));
  lineto(round((c+35)*k*P),round((d+90)*k*Q));
  moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+10)*k*P),round((d+70)*k*Q));
  lineto(round((c+25)*k*P),round((d+95)*k*Q));
  end;
  end;
  procedure climber_legs2(c,d:integer;k:real;canvas:TCanvas);
  begin
  with canvas do
  begin
   moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+25)*k*P),round((d+75)*k*Q));
  lineto(round((c+35)*k*P),round((d+100)*k*Q));
  moveto(round(c*k*P),round((d+60)*k*Q));
  lineto(round((c+25)*k*P),round((d+80)*k*Q));
  lineto(round((c+35)*k*P),round((d+95)*k*Q));
  end;
  end;
procedure TForm1.FormActivate(Sender: TObject);
begin
  Canvas.Pen.Width:=4;
x:=50;
y:=50;
k:=1;
i:=1;
timerrunner.Interval:=80;
end;

procedure TForm1.timerrunnerTimer(Sender: TObject);
var help:boolean;

begin
  P:=ClientWidth/1000;
  Q:=ClientHeight/600;
with canvas do
begin
  //Brush.Color := ClWhite;
 Repaint;
 DoubleBuffered:=True;
//FillRect(Canvas.ClipRect);
end;
case i of
1:
begin
runner_body(x,y,k,canvas);
runner_legs1(x,y,k,canvas);
runner_arms1(x,y,k,canvas);
inc(i);
end;
2:
begin
runner_body(x,y,k,canvas);
runner_legs2(x,y,k,canvas);
runner_arms2(x,y,k,canvas);
inc(i);
end;
3:
begin
runner_body(x,y,k,canvas);
runner_legs3(x,y,k,canvas);
runner_arms3(x,y,k,canvas);
i:=1;
help:=false;
end;
4:
begin
runner_body(x,y,k,canvas);
jumper_legs1(x,y,k,canvas);
jumper_arms1(x,y,k,canvas);
inc(i);
end;
5:
begin
runner_body(x,y,k,canvas);
jumper_legs2(x,y,k,canvas);
jumper_arms2(x,y,k,canvas);
inc(i);
end;
6:begin
runner_body(x,y,k,canvas);
jumper_legs1(x,y,k,canvas);
jumper_arms1(x,y,k,canvas);
i:=1;
end;
7:begin
runner_body(x,y,k,canvas);
climber_legs1(x,y,k,canvas);
climber_arms1(x,y,k,canvas);
inc(i);
end;
8:begin
runner_body(x,y,k,canvas);
climber_legs2(x,y,k,canvas);
climber_arms2(x,y,k,canvas);
i:=7;
end;
end;
if x< 200 then
begin
x:=x+2;
y:=y+1;
k:=k+0.01;
{if (y=70)or (y=72) or (y=74) or (y=76)or (y=78)or (y=80)  then
i:=7;}
if (x=90) or (x=140) then
i:=4;
end;
if x >= 200 then
begin
if x = 200 then
begin
i:=7;
inc(x);
end;
y:=y-4;
if y<30 then
begin
  x:=50;
  y:=50;
  k:=1;
  i:=1;
end;

end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
MediaPlayer1.FileName := 'song.mp3';
Mediaplayer1.Open;
Mediaplayer1.Play;
end;

end.
