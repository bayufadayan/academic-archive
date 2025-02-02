%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA103
% Project Title: Ant Colony Optimization for Traveling Salesman Problem
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Ant Colony Optimization in MATLAB (URL: https://yarpiz.com/53/ypea103-ant-colony-optimization), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function model = CreateModel()

    x = [0 5 7 3 0];
    
    y = [5 0 4 0 0];
    
    n = numel(x);
    
    D = zeros(n, n);
    
    for i = 1:n-1
        for j = i+1:n
            
            D(i, j) = sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
            
            D(j, i) = D(i, j);
            
        end
    end
    
    model.n = n;
    model.x = x;
    model.y = y;
    model.D = D;

end