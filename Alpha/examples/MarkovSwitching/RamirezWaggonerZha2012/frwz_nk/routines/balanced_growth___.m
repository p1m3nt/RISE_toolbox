%% Code automagically generated by rise on 20-Aug-2013 15:52:36

function [RES]=balanced_growth___(y,x,ss,param,def,s0,s1)

RES=zeros(6,1);
RES(1)=1-param(3)*(1-.5*param(5)*(y(1)-1)^2)*y(3)*y(2)/((1-.5*param(5)*((y(1)+y(4))-1)^2)*(y(3)+y(6))*exp(param(6))*(y(1)+y(4)));
RES(2)=1-param(3)*(1-.5*param(5)*((y(1)+y(4))-1)^2)*(y(3)+y(6))*(y(2)+y(5))/((1-.5*param(5)*((y(1)+2*y(4))-1)^2)*(y(3)+2*y(6))*exp(param(6))*(y(1)+2*y(4)));
RES(3)=1-param(4)+param(4)*(1-.5*param(5)*(y(1)-1)^2)*y(3)+param(3)*param(5)*(1-.5*param(5)*(y(1)-1)^2)*((y(1)+y(4))-1)*(y(1)+y(4))/(1-.5*param(5)*((y(1)+y(4))-1)^2)-param(5)*(y(1)-1)*y(1);
RES(4)=1-param(4)+param(4)*(1-.5*param(5)*((y(1)+y(4))-1)^2)*(y(3)+y(6))+param(3)*param(5)*(1-.5*param(5)*((y(1)+y(4))-1)^2)*((y(1)+2*y(4))-1)*(y(1)+2*y(4))/(1-.5*param(5)*((y(1)+2*y(4))-1)^2)-param(5)*((y(1)+y(4))-1)*(y(1)+y(4));
RES(5)=((y(2)-y(5))/ss(2))^param(9)*(y(1)/ss(1))^((1-param(9))*param(8))*exp(param(10)*x(1))-y(2)/ss(2);
RES(6)=(y(2)/ss(2))^param(9)*((y(1)+y(4))/ss(1))^((1-param(9))*param(8))*exp(param(10)*x(1))-(y(2)+y(5))/ss(2);