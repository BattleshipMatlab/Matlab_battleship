%final project gui

function Battleship;
map1 = struct('row1', [1 1 0 0 0 0], 'row2', [0 0 0 0 1 0], 'row3', [0 0 0 0 1 0], 'row4', [1 0 0 0 1 0], 'row5', [1 0 0 0 0 0], 'row6', [0 0 1 1 1 0]);
map2 = struct('row1', [0 0 1 1 1 0], 'row2', [0 0 0 0 0 0], 'row3', [0 1 0 1 1 0], 'row4', [0 1 0 0 0 0], 'row5', [0 1 0 0 1 0], 'row6', [0 0 0 0 1 0]);
map3 = struct('row1', [0 0 0 0 0 0], 'row2', [0 0 1 1 1 0], 'row3', [1 1 0 0 0 0], 'row4', [0 0 0 1 0 0], 'row5', [0 0 0 1 0 0], 'row6', [1 1 1 0 0 0]);
map4 = struct('row1', [1 0 0 0 0 1], 'row2', [1 0 0 0 0 1], 'row3', [0 0 1 1 0 1], 'row4', [0 0 0 0 0 0], 'row5', [0 0 0 0 0 1], 'row6', [0 0 0 0 0 1]);
map5 = struct('row1', [0 0 0 0 0 0], 'row2', [0 1 0 0 0 0], 'row3', [0 1 0 0 1 0], 'row4', [0 1 0 0 1 0], 'row5', [0 0 1 0 1 0], 'row6', [0 0 1 0 1 1]);
map6 = struct('row1', [1 1 1 0 0 0], 'row2', [1 0 0 0 0 0], 'row3', [1 0 1 0 0 0], 'row4', [0 1 1 1 0 0], 'row5', [0 0 1 0 0 0], 'row6', [0 0 0 0 0 0]);
mapnumber = randi(6);
maps = {map1 map2 map3 map4 map5 map6};
map = maps{mapnumber};
f =figure('Position', [550 200 200 230],'Color','black');
static1 = uicontrol('Style', 'text','String','Pick a difficulty!','FontName','Onyx','FontSize', 18,'Position', [1 180 200 50],'BackgroundColor',[0.49,1,0.83]);
easy = uicontrol('Style', 'pushbutton', 'String', 'Easy','FontName','Onyx','FontSize', 18,'Position', [1 120 200 50],'BackgroundColor',[.5,1,.5], 'Callback', @callbackfn1);
function callbackfn1(source,eventdata)
       turns=25;
       set(f,'Visible','off')
       gui2(map,turns)
    end
med = uicontrol('Style', 'pushbutton', 'String', 'Medium','FontName','Onyx','FontSize', 18,'Position', [1 60 200 50],'BackgroundColor',[0,.5,1], 'Callback', @callbackfn2);
function callbackfn2(source,eventdata)
       turns=20;
       set(f,'Visible','off')
       gui2(map,turns)
    end
hard = uicontrol('Style', 'pushbutton', 'String', 'Hard','FontName','Onyx','FontSize', 18,'Position', [1 1 200 50],'BackgroundColor',[.5,0,1], 'Callback', @callbackfn3);
function callbackfn3(source,eventdata)
       turns=15;
       set(f,'Visible','off')
       gui2(map,turns)
end



end
function gui2(map,turns); %Gui for the map, another gui will be added that allows the player to select the amount of turns/the difficulty, for now turns = 25
f =figure('Position', [350 100 600 600],'Color',[0.6, 1.0, 1.0]);
wins = 0;
h = 0;
t = 0;
mapcell = struct2cell(map);
r{1} = [uicontrol('Style', 'text', 'String', '(1,1)','Position', [1 1 50 50]) uicontrol('Style', 'text', 'String', '(1,2)','Position', [1 60 50 50]) uicontrol('Style', 'text', 'String', '(1,3)','Position', [1 120 50 50]) uicontrol('Style', 'text', 'String', '(1,4)','Position', [1 180 50 50]) uicontrol('Style', 'text', 'String', '(1,5)','Position', [1 240 50 50]) uicontrol('Style', 'text', 'String', '(1,6)','Position', [1 300 50 50])];
r{2} = [uicontrol('Style', 'text', 'String', '(2,1)','Position', [60 1 50 50]) uicontrol('Style', 'text', 'String', '(2,2)','Position', [60 60 50 50]) uicontrol('Style', 'text', 'String', '(2,3)','Position', [60 120 50 50]) uicontrol('Style', 'text', 'String', '(2,4)','Position', [60 180 50 50]) uicontrol('Style', 'text', 'String', '(2,5)','Position', [60 240 50 50]) uicontrol('Style', 'text', 'String', '(2,6)','Position', [60 300 50 50])];
r{3} = [uicontrol('Style', 'text', 'String', '(3,1)','Position', [120 1 50 50]) uicontrol('Style', 'text', 'String', '(3,2)','Position', [120 60 50 50]) uicontrol('Style', 'text', 'String', '(3,3)','Position', [120 120 50 50]) uicontrol('Style', 'text', 'String', '(3,4)','Position', [120 180 50 50]) uicontrol('Style', 'text', 'String', '(3,5)','Position', [120 240 50 50]) uicontrol('Style', 'text', 'String', '(3,6)','Position', [120 300 50 50])]; 
r{4} = [uicontrol('Style', 'text', 'String', '(4,1)','Position', [180 1 50 50]) uicontrol('Style', 'text', 'String', '(4,2)','Position', [180 60 50 50]) uicontrol('Style', 'text', 'String', '(4,3)','Position', [180 120 50 50]) uicontrol('Style', 'text', 'String', '(4,4)','Position', [180 180 50 50]) uicontrol('Style', 'text', 'String', '(4,5)','Position', [180 240 50 50]) uicontrol('Style', 'text', 'String', '(4,6)','Position', [180 300 50 50])]; 
r{5} = [uicontrol('Style', 'text', 'String', '(5,1)','Position', [240 1 50 50]) uicontrol('Style', 'text', 'String', '(5,2)','Position', [240 60 50 50]) uicontrol('Style', 'text', 'String', '(5,3)','Position', [240 120 50 50]) uicontrol('Style', 'text', 'String', '(5,4)','Position', [240 180 50 50]) uicontrol('Style', 'text', 'String', '(5,5)','Position', [240 240 50 50]) uicontrol('Style', 'text', 'String', '(5,6)','Position', [240 300 50 50])];
r{6} = [uicontrol('Style', 'text', 'String', '(6,1)','Position', [300 1 50 50]) uicontrol('Style', 'text', 'String', '(6,2)','Position', [300 60 50 50]) uicontrol('Style', 'text', 'String', '(6,3)','Position', [300 120 50 50]) uicontrol('Style', 'text', 'String', '(6,4)','Position', [300 180 50 50]) uicontrol('Style', 'text', 'String', '(6,5)','Position', [300 240 50 50]) uicontrol('Style', 'text', 'String', '(6,6)','Position', [300 300 50 50])];
titlemain = uicontrol('Style', 'text', 'String','Battleship','Position', [1 450 600 150],'FontSize', 90,'FontName','Onyx','BackgroundColor',[0,.5,1]);
titlemain2 = uicontrol('Style', 'text', 'String','Pick an x-coordinate and y-coordinate, press fire and see if you hit a ship. Try to find them all. Good Luck!','Position', [1 380 600 70],'FontSize', 20,'FontName','Onyx','BackgroundColor',[0,.5,1]);
static1 = uicontrol('Style', 'text','String','Pick a y-coordinate ','Position', [400 190 100 40],'BackgroundColor',[0.0, 1.0, 0.0]);
edit1 = uicontrol('Style', 'edit', 'Position', [400 140 100 40],'BackgroundColor',[0.0, 1.0, 0.0]);
static2 = uicontrol('Style', 'text','String','Pick a x-coordinate ', 'Position', [400 300 100 40],'BackgroundColor',[0.0, 1.0, 0.0]);
edit2 = uicontrol('Style', 'edit', 'Position', [400 240 100 40],'BackgroundColor',[0.0, 1.0, 0.0]);
Fire = uicontrol('Style', 'pushbutton', 'String', 'FIRE','Position', [400 90 100 40],'BackgroundColor',[1.0, 0.2, 0.0], 'Callback', @callbackfn);
    function callbackfn(source,eventdata);
             x = str2num(get(edit1, 'String'));
             y = str2num(get(edit2, 'String'));
             Pos = mapcell{y}(x);
             Ps = sprintf('row%d(%d)',y,x);
            if Pos == 1 %Designates a hit
               set(r{y}(x),'BackgroundColor','r')
               mapcell{y}(x) = 2;
                h = h+1;
                t = t+1;
           elseif Pos == 0 %designates a miss
                set(r{y}(x),'BackgroundColor', [0.6, 1.0, 1.0])
                mapcell{y}(x) = 3;
                t = t+1;
            elseif Pos == 2
               warndlg('You have already chosen this area before')
           elseif Pos == 3
               warndlg('You have already chosen this area before')
            end  
           if h == 10
               wins = 1;
               msgbox('Congratulations, you win!')
               wl(wins)
               set(f,'Visible','off')
           end
           if t == turns && wins == 0
               msgbox('You fail Matlab')
               wl(wins)
               set(f,'Visible','off')
           end
    end
end

function wl(wins)
yourwins = fopen('winsandloses.txt');
if yourwins ~= -1
    yourwins = fopen('winsandloses.txt', 'a');
    if wins == 1
        fprintf(yourwins, '%d \n', 1);
        fclose(yourwins);
    else
        fprintf(yourwins, '%d \n', 0);
        fclose(yourwins);
    end
else
    yourwins = fopen('winsandloses.txt', 'w');
    if wins == 1
        fprintf(yourwins, '%d \n', 1);
        fclose(yourwins);
    else
        fprintf(yourwins, '%d \n', 0);
        fclose(yourwins);
    end
end
gamedata = importdata('winsandloses.txt');
gamesplayed = length(gamedata);
totalwins = sum(gamedata);
percentwins = (totalwins / gamesplayed) * 100;
disp(percentwins);
w = figure('Position', [600 200 200 230],'Color','black');
staticwins = uicontrol('Style', 'text','String', sprintf('Total Wins = %d', totalwins),'FontName','Onyx','FontSize', 18,'Position', [1 150 200 50],'BackgroundColor',[0.49,1,0.83]);
staticgamesplayed = uicontrol('Style', 'text', 'String', sprintf('Total Games Played = %d', gamesplayed),'FontName','Onyx','FontSize', 18,'Position', [1 100 200 50],'BackgroundColor',[0,.5,1]);
staticpercentwins = uicontrol('Style', 'text', 'String', sprintf('Percent wins = %.f %%', percentwins),'FontName','Onyx','FontSize', 18,'Position', [1 50 200 50],'BackgroundColor',[.5,0,1]);
end

% Done and done, hope you enjoy!
