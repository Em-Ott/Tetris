# Tetris
To start off my time with Godot I've decided for my first personal project to be a game of Tetris! I started this on 08/05/2024 and it is currently an ongoing project. <br>
Assets from: https://unluckystudio.com/free-game-artassets-15-tetris-game-assets/ <br>
Goals to accomplish: <br>
<ol><li>Create tetris pieces.</li>
<li>Make it so the tetris pieces have a steady falling rate which can be sped up when the user presses the down arrow key.</li>
<li>Make it possible to move the pieces in air from the right and the left using the left and right arrow keys. </li>
<li>Make it possible to move the pieces in air in increments of 90 degrees using the up arrow key. </li>
<li>Have a preview of the next piece and a score counter.</li>
<li>Have the next piece be randomly generated.</li>
<li>Make it so pieces cannot overlap with each other and instead stack.</li>
<li>When a row of pieces is full have it disappear and add to the score.</li>
<li>When a piece touches the top of the game area have the game be over.</li> <br>
</ol>
This is a rather long list and some items can be combined for simplicity however I think it's beneficial to seperate everything so I can do one step at a time. Now that I know what is essential for this Tetris game I'm going to explain how I plan to accomplish all of this: <br><br>
<ol><li>Make 2D character bodies for each piece and give each body two child nodes. One of the child nodes is the sprite which I imported my asset's texture into
and the other child node is the collision body. Given the piece I sometimes had to add an extra child node as the shape was irregular. I plan to use these collision bodies so that I don't have to write as much code when it comes to the blocks overlapping. I will still likely have to make an array to keep track of which spaces are filled so I can determine when a full row is filled. To have multiple pieces for the same 2D character body I will create a new scene with my pieces and instantiate it.</li>
<li>I plan to use a function with delta to give them a steady falling rate. I will also add a userinput key under project settings of the down arrow which will increase the rate of their y decreasing. I will create variables to keep track of the pieces' y. </li>
<li>I will create user input keys, left arrow and right arrow, which will move the pieces to the left and right.</li>
<li>Like above, I will create user input key, up arrow which will rotate the current piece 90 degrees.  </li>
<li>I will randomly generate the next piece and create a variable for it which will show it's 2DSprite in the next box and and I will make a variable to keep track of the score and add on to that whenever my row cleared function goes off. </li>
<li>I will learn how to generate a random number and then each random number will correspond with a different piece.</li>
<li>I am using 2D Collision bodies to try and prevent overlap I'm not exactly sure how to code interactions between collision bodies yet so I will learn how to do this and return with my newfound knowledge.</li>
<li>I am going to have to keep track of which pieces are filled using an array, preferably an array[][] but I am not sure if Godot has this so I will find out. Then I will run a for loop to see if column i is completely filled, I will use 1 to denote filled and 0 to denote empty. </li>
<li>I am going to set this up with 2D Collision bodies, adding a new collision body on another layer to the top of the game area and giving it the interaction to end the game when the piece intersects with it.</li>
</ol><br>
All of this being said given my limited experience with Godot these plans are subject to change, however I wanted to plan everything out better this time so I wouldn't have to redo as much as I did in my previous project.
