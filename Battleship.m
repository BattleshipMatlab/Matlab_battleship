%final project gui
function gui
f =figure('Position', [1 100 600 600]);
button1 = uicontrol('Style', 'text', 'String', '(1,1)','Position', [1 300 50 50]);
button2 = uicontrol('Style', 'text', 'String', '(1,2)','Position', [60 300 50 50]);
button3 = uicontrol('Style', 'text', 'String', '(1,3)','Position', [120 300 50 50]);
button4 = uicontrol('Style', 'text', 'String', '(1,4)','Position', [180 300 50 50]);
button5 = uicontrol('Style', 'text', 'String', '(1,5)','Position', [240 300 50 50]);
button6 = uicontrol('Style', 'text', 'String', '(1,6)','Position', [300 300 50 50]);
button7 = uicontrol('Style', 'text', 'String', '(2,1)','Position', [1 240 50 50]);
button8 = uicontrol('Style', 'text', 'String', '(2,2)','Position', [60 240 50 50]);
button9 = uicontrol('Style', 'text', 'String', '(2,3)','Position', [120 240 50 50]);
button10 = uicontrol('Style', 'text', 'String', '(2,4)','Position', [180 240 50 50]);
button11 = uicontrol('Style', 'text', 'String', '(2,5)','Position', [240 240 50 50]);
button12 = uicontrol('Style', 'text', 'String', '(2,6)','Position', [300 240 50 50]);
button13 = uicontrol('Style', 'text', 'String', '(3,1)','Position', [1 180 50 50]);
button14 = uicontrol('Style', 'text', 'String', '(3,2)','Position', [60 180 50 50]);
button15 = uicontrol('Style', 'text', 'String', '(3,3)','Position', [120 180 50 50]);
button16 = uicontrol('Style', 'text', 'String', '(3,4)','Position', [180 180 50 50]);
button17 = uicontrol('Style', 'text', 'String', '(3,5)','Position', [240 180 50 50]);
button18 = uicontrol('Style', 'text', 'String', '(3,6)','Position', [300 180 50 50]);
button19 = uicontrol('Style', 'text', 'String', '(4,1)','Position', [1 120 50 50]);
button20 = uicontrol('Style', 'text', 'String', '(4,2)','Position', [60 120 50 50]);
button21 = uicontrol('Style', 'text', 'String', '(4,3)','Position', [120 120 50 50]);
button22 = uicontrol('Style', 'text', 'String', '(4,4)','Position', [180 120 50 50]);
button23 = uicontrol('Style', 'text', 'String', '(4,5)','Position', [240 120 50 50]);
button24 = uicontrol('Style', 'text', 'String', '(4,6)','Position', [300 120 50 50]);
button25 = uicontrol('Style', 'text', 'String', '(5,1)','Position', [1 60 50 50]);
button26 = uicontrol('Style', 'text', 'String', '(5,2)','Position', [60 60 50 50]);
button27 = uicontrol('Style', 'text', 'String', '(5,3)','Position', [120 60 50 50]);
button28 = uicontrol('Style', 'text', 'String', '(5,4)','Position', [180 60 50 50]);
button29 = uicontrol('Style', 'text', 'String', '(5,5)','Position', [240 60 50 50]);
button30 = uicontrol('Style', 'text', 'String', '(5,6)','Position', [300 60 50 50]);
button31 = uicontrol('Style', 'text', 'String', '(6,1)','Position', [1 1 50 50]);
button32 = uicontrol('Style', 'text', 'String', '(6,2)','Position', [60 1 50 50]);
button33 = uicontrol('Style', 'text', 'String', '(6,3)','Position', [120 1 50 50]);
button34 = uicontrol('Style', 'text', 'String', '(6,4)','Position', [180 1 50 50]);
button35 = uicontrol('Style', 'text', 'String', '(6,5)','Position', [240 1 50 50]);
button36 = uicontrol('Style', 'text', 'String', '(6,6)','Position', [300 1 50 50]);
titlemain = uicontrol('Style', 'text', 'String','Battleship','Position', [1 530 600 70]);
static1 = uicontrol('Style', 'text','String','Pick a x-coordinate ','Position', [400 300 100 40]);
edit1 = uicontrol('Style', 'edit', 'Position', [400 240 100 40]);
static2 = uicontrol('Style', 'text','String','Pick a y-coordinate ', 'Position', [400 190 100 40]);
edit2 = uicontrol('Style', 'edit', 'Position', [400 140 100 40]);
Fire = uicontrol('Style', 'pushbutton', 'String', 'FIRE','Position', [400 90 100 40], 'Callback', @callbackfn);
    function callbackfn(source,eventdata)
        x =str2num(get(edit1, 'String'));
        y =str2num(get(edit2, 'String'));
    end
end

