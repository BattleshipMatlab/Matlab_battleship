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
f =figure('Position', [550 200 200 230]);
static1 = uicontrol('Style', 'text','String','Pick a difficulty!','Position', [1 180 200 50]);
easy = uicontrol('Style', 'pushbutton', 'String', 'Easy','Position', [1 120 200 50], 'Callback', @callbackfn1);
function callbackfn1(source,eventdata)
       turns=25;
       set(f,'Visible','off')
       gui2(map,turns)
    end
med = uicontrol('Style', 'pushbutton', 'String', 'Medium','Position', [1 60 200 50], 'Callback', @callbackfn2);
function callbackfn2(source,eventdata)
       turns=20;
       set(f,'Visible','off')
       gui2(map,turns)
    end
hard = uicontrol('Style', 'pushbutton', 'String', 'Hard','Position', [1 1 200 50], 'Callback', @callbackfn3);
function callbackfn3(source,eventdata)
       turns=15;
       set(f,'Visible','off')
       gui2(map,turns)
end



end
function gui2(map,turns); %Gui for the map, another gui will be added that allows the player to select the amount of turns/the difficulty, for now turns = 25
f =figure('Position', [1 100 600 600]);
win = 0;
h = 0;
t = 0;
mapcell = struct2cell(map);
r{1} = [uicontrol('Style', 'text', 'String', '(1,1)','Position', [1 300 50 50]) uicontrol('Style', 'text', 'String', '(1,2)','Position', [60 300 50 50]) uicontrol('Style', 'text', 'String', '(1,3)','Position', [120 300 50 50]) uicontrol('Style', 'text', 'String', '(1,4)','Position', [180 300 50 50]) uicontrol('Style', 'text', 'String', '(1,5)','Position', [240 300 50 50]) uicontrol('Style', 'text', 'String', '(1,6)','Position', [300 300 50 50])]
r{2} = [uicontrol('Style', 'text', 'String', '(2,1)','Position', [1 240 50 50]) uicontrol('Style', 'text', 'String', '(2,2)','Position', [60 240 50 50]) uicontrol('Style', 'text', 'String', '(2,3)','Position', [120 240 50 50]) uicontrol('Style', 'text', 'String', '(2,4)','Position', [180 240 50 50]) uicontrol('Style', 'text', 'String', '(2,5)','Position', [240 240 50 50]) uicontrol('Style', 'text', 'String', '(2,6)','Position', [300 240 50 50])]
r{3} = [uicontrol('Style', 'text', 'String', '(3,1)','Position', [1 180 50 50]) uicontrol('Style', 'text', 'String', '(3,2)','Position', [60 180 50 50]) uicontrol('Style', 'text', 'String', '(3,3)','Position', [120 180 50 50]) uicontrol('Style', 'text', 'String', '(3,4)','Position', [180 180 50 50]) uicontrol('Style', 'text', 'String', '(3,5)','Position', [240 180 50 50]) uicontrol('Style', 'text', 'String', '(3,6)','Position', [300 180 50 50])]
r{4} = [uicontrol('Style', 'text', 'String', '(4,1)','Position', [1 120 50 50]) uicontrol('Style', 'text', 'String', '(4,2)','Position', [60 120 50 50]) uicontrol('Style', 'text', 'String', '(4,3)','Position', [120 120 50 50]) uicontrol('Style', 'text', 'String', '(4,4)','Position', [180 120 50 50]) uicontrol('Style', 'text', 'String', '(4,5)','Position', [240 120 50 50]) uicontrol('Style', 'text', 'String', '(4,6)','Position', [300 120 50 50])]
r{5} = [uicontrol('Style', 'text', 'String', '(5,1)','Position', [1 60 50 50]) uicontrol('Style', 'text', 'String', '(5,2)','Position', [60 60 50 50]) uicontrol('Style', 'text', 'String', '(5,3)','Position', [120 60 50 50]) uicontrol('Style', 'text', 'String', '(5,4)','Position', [180 60 50 50]) uicontrol('Style', 'text', 'String', '(5,5)','Position', [240 60 50 50]) uicontrol('Style', 'text', 'String', '(5,6)','Position', [300 60 50 50])]
r{6} = [uicontrol('Style', 'text', 'String', '(6,1)','Position', [1 1 50 50]) uicontrol('Style', 'text', 'String', '(6,2)','Position', [60 1 50 50]) uicontrol('Style', 'text', 'String', '(6,3)','Position', [120 1 50 50]) uicontrol('Style', 'text', 'String', '(6,4)','Position', [180 1 50 50]) uicontrol('Style', 'text', 'String', '(6,5)','Position', [240 1 50 50]) uicontrol('Style', 'text', 'String', '(6,6)','Position', [300 1 50 50])]
titlemain = uicontrol('Style', 'text', 'String','Battleship','Position', [1 530 600 70]);
static1 = uicontrol('Style', 'text','String','Pick a x-coordinate ','Position', [400 300 100 40]);
edit1 = uicontrol('Style', 'edit', 'Position', [400 240 100 40]);
static2 = uicontrol('Style', 'text','String','Pick a y-coordinate ', 'Position', [400 190 100 40]);
edit2 = uicontrol('Style', 'edit', 'Position', [400 140 100 40]);
Fire = uicontrol('Style', 'pushbutton', 'String', 'FIRE','Position', [400 90 100 40], 'Callback', @callbackfn);
    function callbackfn(source,eventdata)
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
                set(r{y}(x),'BackgroundColor', [0.5 0.5 0.5])
                mapcell{y}(x) = 3
                t = t+1;
            elseif Pos == 2
               warndlg('You have already chosen this area before')
           elseif Pos == 3
               warndlg('You have already chosen this area before')
            end  
           if h == 10
               win = 1;
               msgbox('Congratulations, you win!')
               fid1 = fopen('wins.txt', 'r');
               gamewin = fscanf(fid1,'%d');
               gamewin(1) = gamewin(1) + 1
               fclose(fid1);
               fid2 = fopen('wins.txt','w');
               fprintf(fid1, '%d', gamewin(1));
               fid2 = fopen('losses.txt', 'r');
               wl(fscanf(fid2,'%d'),fscanf(fid1,'%d'))
           end
           if t == turns && win == 0
               msgbox('You fail Matlab')
               fid2 = fopen('losses.txt', 'r');
               gamelose = fscanf(fid2,'%d');
               gamelose(1) = gamelose(1) + 1
               fclose(fid2);
               fid2 = fopen('losses.txt','w');
               fprintf(fid2, '%d', gamelose(1));
               fid1 = fopen('wins.txt', 'r');
               wl(fscanf(fid2,'%d'),fscanf(fid1,'%d'))
           end
    end
end

function wl(l,w)
    totalgames = sum(w) + sum(l);
    winp = (w/totalgames) * 100
    fprintf('You have a win percentage of %d', winp)
end



    

%     function wins(win)
%         yourwins = fopen('winsandloses.txt', 'w');
%         fprintf(yourwins, '%d ./n', 1);
%         fclose(yourwins);
%   
%         yourwins = fopen('winsandloses.txt', 'w');
%         fprintf(yourwins, '%d ./n', 0);
%         fclose(yourwins);
%     end
%         gamedata = importdata('winsandloses.txt');
%         gamesplayed = length(gamedata);
%         totalwins = 0;
%         for i=1:gamesplayed
%             totalwins(1) = gamedata(i) + totalwins(1)
%         end
%     percentwins = totalwins(1) / gamesplayed;    
%     disp(percentwins);
%     end
% The overall structure, and needs are well understood by the coding team.  
% Some minor work arounds are still required, but for the most part the
% variables line up well; the code does have some error, but it will be
% easily fixed with minor alterations.  The file runs battleship in a GUI
% which is then checked for a win or a loss for the number of hits compared
% to the number of ships that there were.  Once that is tallied it records
% the win.  With more work, music, an intro logo, and a win screen can be
% made to further expand the program.
