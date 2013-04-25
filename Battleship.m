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
%Loadwins   add this fuction
gui2(map);
%SaveWin/loss   add this function


end
function gui2(map,turns); %Gui for the map, another gui will be added that allows the player to select the amount of turns/the difficulty, for now turns = 25
f =figure('Position', [1 100 600 600]);
turns = 25;
win = 0;
h = 0;
t = 0;
r11 = uicontrol('Style', 'text', 'String', '(1,1)','Position', [1 300 50 50]);
r12 = uicontrol('Style', 'text', 'String', '(1,2)','Position', [60 300 50 50]);
r13 = uicontrol('Style', 'text', 'String', '(1,3)','Position', [120 300 50 50]);
r14 = uicontrol('Style', 'text', 'String', '(1,4)','Position', [180 300 50 50]);
r15 = uicontrol('Style', 'text', 'String', '(1,5)','Position', [240 300 50 50]);
r16 = uicontrol('Style', 'text', 'String', '(1,6)','Position', [300 300 50 50]);
r21 = uicontrol('Style', 'text', 'String', '(2,1)','Position', [1 240 50 50]);
r22 = uicontrol('Style', 'text', 'String', '(2,2)','Position', [60 240 50 50]);
r23 = uicontrol('Style', 'text', 'String', '(2,3)','Position', [120 240 50 50]);
r24 = uicontrol('Style', 'text', 'String', '(2,4)','Position', [180 240 50 50]);
r25 = uicontrol('Style', 'text', 'String', '(2,5)','Position', [240 240 50 50]);
r26 = uicontrol('Style', 'text', 'String', '(2,6)','Position', [300 240 50 50]);
r31 = uicontrol('Style', 'text', 'String', '(3,1)','Position', [1 180 50 50]);
r32 = uicontrol('Style', 'text', 'String', '(3,2)','Position', [60 180 50 50]);
r33 = uicontrol('Style', 'text', 'String', '(3,3)','Position', [120 180 50 50]);
r34 = uicontrol('Style', 'text', 'String', '(3,4)','Position', [180 180 50 50]);
r35 = uicontrol('Style', 'text', 'String', '(3,5)','Position', [240 180 50 50]);
r36 = uicontrol('Style', 'text', 'String', '(3,6)','Position', [300 180 50 50]);
r41 = uicontrol('Style', 'text', 'String', '(4,1)','Position', [1 120 50 50]);
r42 = uicontrol('Style', 'text', 'String', '(4,2)','Position', [60 120 50 50]);
r43 = uicontrol('Style', 'text', 'String', '(4,3)','Position', [120 120 50 50]);
r44 = uicontrol('Style', 'text', 'String', '(4,4)','Position', [180 120 50 50]);
r45 = uicontrol('Style', 'text', 'String', '(4,5)','Position', [240 120 50 50]);
r46 = uicontrol('Style', 'text', 'String', '(4,6)','Position', [300 120 50 50]);
r51 = uicontrol('Style', 'text', 'String', '(5,1)','Position', [1 60 50 50]);
r52 = uicontrol('Style', 'text', 'String', '(5,2)','Position', [60 60 50 50]);
r53 = uicontrol('Style', 'text', 'String', '(5,3)','Position', [120 60 50 50]);
r54 = uicontrol('Style', 'text', 'String', '(5,4)','Position', [180 60 50 50]);
r55 = uicontrol('Style', 'text', 'String', '(5,5)','Position', [240 60 50 50]);
r56 = uicontrol('Style', 'text', 'String', '(5,6)','Position', [300 60 50 50]);
r61 = uicontrol('Style', 'text', 'String', '(6,1)','Position', [1 1 50 50]);
r62 = uicontrol('Style', 'text', 'String', '(6,2)','Position', [60 1 50 50]);
r63 = uicontrol('Style', 'text', 'String', '(6,3)','Position', [120 1 50 50]);
r64 = uicontrol('Style', 'text', 'String', '(6,4)','Position', [180 1 50 50]);
r65 = uicontrol('Style', 'text', 'String', '(6,5)','Position', [240 1 50 50]);
r66 = uicontrol('Style', 'text', 'String', '(6,6)','Position', [300 1 50 50]);
titlemain = uicontrol('Style', 'text', 'String','Battleship','Position', [1 530 600 70]);
static1 = uicontrol('Style', 'text','String','Pick a x-coordinate ','Position', [400 300 100 40]);
edit1 = uicontrol('Style', 'edit', 'Position', [400 240 100 40]);
static2 = uicontrol('Style', 'text','String','Pick a y-coordinate ', 'Position', [400 190 100 40]);
edit2 = uicontrol('Style', 'edit', 'Position', [400 140 100 40]);
Fire = uicontrol('Style', 'pushbutton', 'String', 'FIRE','Position', [400 90 100 40], 'Callback', @callbackfn);
    function callbackfn(source,eventdata)
                x = str2num(get(edit1, 'String'));
                 y = str2num(get(edit2, 'String'));
        %z2 needs to call the uicontrol for the designated coordinates. A
        %workaround needs to be found.
             Pos = eval(sprintf('map.row%d(%d)',y,x))
             Ps = sprintf('row%d(%d)',y,x);
             ps2 = genvarname(Ps)
            if Pos == 1 %Designates a hit
               %set(z2,'Color','r')
               map.(Ps) = 2
                h = h+1;
           elseif Pos == 0 %designates a miss
                %set(z2,'Color', [0.5 0.5 0.5])
                assignin('base', Ps, 3)
            elseif Pos == 2
               sprintf('You have already chosen this area before')
           elseif Pos == 3
               sprintf('You have already chosen this area before')
            end  
           if h == 10
               win = 1;
               sprintf('Congratulations, you win!')
           end
        t = t+1
    end
           
if win ==1
    yourwins = fopen('winsandloses.txt', 'w');
    fprintf(yourwins, '%d ./n', 1)
    fclose(yourwins)
else
    yourwins = fopen('winsandloses.txt', 'w');
    fprintf(yourwins, '%d ./n', 0)
    fclose(yourwins)
end
end

% The overall structure, and needs are well understood by the coding team.  
% Some minor work arounds are still required, but for the most part the
% variables line up well; the code does have some error, but it will be
% easily fixed with minor alterations.  The file runs battleship in a GUI
% which is then checked for a win or a loss for the number of hits compared
% to the number of ships that there were.  Once that is tallied it records
% the win.  With more work, music, an intro logo, and a win screen can be
% made to further expand the program.
