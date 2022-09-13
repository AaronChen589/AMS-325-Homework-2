

% This Main plots two graph by utilizing the functions: NumberOfOccurences
%  and estimationOfPi. A for loop is runned from i = 10 to 19 that
%  determines the number of occurences/ N-total, which then can be used to
%  as an argument for estimationOfPi. Both values from the functions are
%  then appended into their own respective arrays to be plotted later on.

x = zeros(1,10);
y = zeros(1,10);
estimated_pi = zeros(1,10);


% this for loop will call the functions: NumberOfOccurences and
% estimationOfPi and store them into their own respective vectors to be
% graphed later on.
for i = 10:19
    num = NumberOfOccurences(i);
    x(i-9) = num;
    estimated_pi(i - 9) = estimationOfPi(num);
    y(i - 9) = abs(estimated_pi(i - 9) - pi);
end


hold on
figure

% Creates a graph with x-value being N-total and y-value being
% the absolute value of the difference between the estimated Pi
% and Pi. Axis are labelled accordingly
yyaxis left
semilogx(x,y)
xlabel("Number Of N-times")
ylabel("Absolute Value of Estimated Pi - Pi")

% Creates another graph on the same graph with x-value being N-total
% and y-value being the estimated_Pi
yyaxis right
plot(x,estimated_pi);
ylabel("Estimation of Pi")

hold off

%saves the figure into a svg file
print question1b.svg -dsvg

