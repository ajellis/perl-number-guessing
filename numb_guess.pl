use strict;
use warnings;
use feature qw(say);
use Scalar::Util qw(looks_like_number);

my $numb_to_guess= int(1 + rand(100 - 1));
my @guessed_numbs = ();
my $counter = 0;

say $numb_to_guess;

say ":. Pathetic human! Machines will destroy you all! Unless you prove you're worthy...";
say "  :. I've picked a random number between 1 and 100. I bet you can't guess it! You have 5 chances!";

while($counter < 6)
{
   my $guess = <>;
   $counter += 1;
   if (looks_like_number($guess)) {
     push (@guessed_numbs, $guess);
     if ($guess == $numb_to_guess) {
      say "You got it! congrats!";
      last;
    }  elsif ($counter == 5) {
        say "Nuclear devices detonating in 5... 4... 3...";
        last;
    } elsif ($guess < $numb_to_guess) {
      say "That guess is too low. Guess higher. You have @{[5- $counter]} chances to save the human race!";
    } elsif ($guess > $numb_to_guess) {
     say "That guess is too high. Guess lower.";
     say "You have @{[5- $counter]} chances to save the human race!";
    }
  } else {
   say "That's not even a number! What a stupid waste of a guess!";
   say "You have @{[5- $counter]} chances to save the human race!";
  }
}
