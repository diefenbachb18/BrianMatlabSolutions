function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Brian Diefenbach
%
%         DUE: November 27th
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs. Your
%              job is to find, correct, and mark the errors with comments
%              describing the bug, how you found it, and how you corrected
%              it. Correct the bugs and submit this corrected file on
%              github. There are between 10 - 12 bugs, depending on how you
%              correct them.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ');

while level ~= beginner && level ~= moderate && level ~= advanced %Bug Found changed to &&. 
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner   %Bug found here, added extra =.
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
elseif level == advanced %Bug Found. Added an else if here along with line 65. 
    
    highest = advancedHighest;
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1,highest]) %Bug Found. Changed to a randi function so I didnt have to worry about decimals. 

% initialize number of guesses and User_guess

numOfTries = 0; %Bug Found. This should start at zero because we iterate before the guess in line 95
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    while userGuess < 1 || userGuess > highest %Bug Found. Should be greater than not greater than or equal to. 
        
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        
        userGuess = input('');
        
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    
    if userGuess < secretNumber %Bug Found. Switched around the greater than a less than. 
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n',secretNumber,numOfTries); %Bug Found to add a variable here
        
        
        fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
        
    end  % of guessing while loop
end %Bug found, added end to the while loop.     
   % end of game