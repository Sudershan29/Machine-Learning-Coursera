function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

raw=[x y];
for i=1:size(x)
  for j=i+1:size(x)
    if(raw(i,1)>raw(j,1))
      a=raw(i);
      raw(i)=raw(j);
      raw(j)=a;
    end
  end
end
x=raw(:,1);
y=raw(:,2);
plot(x,y);

% ============================================================

end
