enum COLOR = {GREEN, BLUE, PINK, YELLOW};

var COLOR: Si;
var COLOR: Yan;
var COLOR: Yu;
var COLOR: Xu;
var COLOR: Qing;
var COLOR: Ji;
var COLOR: You;
var COLOR: Bing;
var COLOR: Yong;
var COLOR: Liang;
var COLOR: Yi;
var COLOR: Jing;
var COLOR: Yang;
var COLOR: Jiao;

constraint Liang != Yong;
constraint Yong != Yi;
constraint Yong != Jing;
constraint Yong != Si;
constraint Si != Bing;
constraint Si != Ji;
constraint Si != Yan;
constraint Si != Yu;
constraint Si != Jing;
constraint Jing != Yi;
constraint Jing != Yu;
constraint Jing != Yang;
constraint Jing != Jiao;
constraint Jiao != Yi;
constraint Jiao != Yang;
constraint Yang != Yu;
constraint Yang != Xu;
constraint Xu != Yu;
constraint Xu != Yan;
constraint Xu != Qing;
constraint Qing != Yan;
constraint Qing != Ji;
constraint Ji != Bing;
constraint Ji != You;
constraint Ji != Yan;
constraint Yan != Yu;

solve satisfy
