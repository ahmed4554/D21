import 'package:flutter/material.dart';

List<String> bloodKinds = [
  'A+',
  'A-',
  'B+',
  'B-',
  'O+',
  'O-',
  'AB+',
  'AB-',
];

var shapes = {
  "activity": "shapes",
  "names": [
    "Circle",
    "Heart",
    "Heptagon",
    "Hexagon",
    "Kite",
    "Octagon",
    "Pentagon",
    "Rectangle",
    "Square",
    "Star",
    "Trapezoid",
    "Triangle"
  ],
  "shapes": [
    "assets/Database/shapes/shapes/circle.png",
    "assets/Database/shapes/shapes/heart.png",
    "assets/Database/shapes/shapes/heptagon.png",
    "assets/Database/shapes/shapes/hexagon.png",
    "assets/Database/shapes/shapes/kite.png",
    "assets/Database/shapes/shapes/octagon.png",
    "assets/Database/shapes/shapes/pentagon.png",
    "assets/Database/shapes/shapes/rectangle.png",
    "assets/Database/shapes/shapes/square.png",
    "assets/Database/shapes/shapes/star.png",
    "assets/Database/shapes/shapes/trapezoid.png",
    "assets/Database/shapes/shapes/triangle.png"
  ],
  "sounds": [
    "Database/shapes/sounds/circle.mp3",
    "Database/shapes/sounds/heart.mp3",
    "Database/shapes/sounds/heptagon.mp3",
    "Database/shapes/sounds/hexagon.mp3",
    "Database/shapes/sounds/kite.mp3",
    "Database/shapes/sounds/octagon.mp3",
    "Database/shapes/sounds/pentagon.mp3",
    "Database/shapes/sounds/rectangle.mp3",
    "Database/shapes/sounds/square.mp3",
    "Database/shapes/sounds/star.mp3",
    "Database/shapes/sounds/trapezoid.mp3",
    "Database/shapes/sounds/triangle.mp3"
  ],
  "questions": ["What is the name of this shape ?"]
};

var qShapes = {
  "questions": [
    {
      "kind": "text",
      "text": "What is this shape?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/circle.png",
      "answer": "circle",
      "options": ["square", "circle", "kite"]
    },
    {
      "kind": "text",
      "text": "What is this shape?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/octagon.png",
      "answer": "octagon",
      "options": ["octagon", "star", "heart"]
    },
    {
      "kind": "text",
      "text": "What is this shape?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/triangle.png",
      "answer": "triangle",
      "options": ["heptagon", "circle", "triangle"]
    },
    {
      "kind": "text",
      "text": "How many sides does a triangle have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/triangle.png",
      "answer": "3",
      "options": ["3", "4", "5"]
    },
    {
      "kind": "text",
      "text": "How many sides does a pentagon have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/pentagon.png",
      "answer": "5",
      "options": ["4", "6", "5"]
    },
    {
      "kind": "text",
      "text": "How many angles does a square have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/square.png",
      "answer": "4",
      "options": ["5", "4", "3"]
    },
    {
      "kind": "text",
      "text": "How many angles does a trapezoid have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/trapezoid.png",
      "answer": "4",
      "options": ["3", "5", "4"]
    },
    {
      "kind": "text",
      "text": "How many sides does an octagon have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/octagon.png",
      "answer": "8",
      "options": [
        "4",
        "7",
        "8",
      ]
    },
    {
      "kind": "text",
      "text": "How many angles does a rectangle have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/rectangle.png",
      "answer": "7",
      "options": [
        "5",
        "4",
        "7",
      ]
    },
    {
      "kind": "text",
      "text": "how many sides does a square have?",
      "text2": "",
      "pic": "assets/Database/shapes/shapes/square.png",
      "answer": "4",
      "options": [
        "3",
        "4",
        "5",
      ]
    },
  ]
};

var animals = {
  "activity": "animals",
  "names": [
    "Ant",
    "Bear",
    "Crocodile",
    "Dog",
    "Elephant",
    "Fox",
    "Giraffe",
    "Horse",
    "Iguana",
    "Jellyfish",
    "kangaroo",
    "Lion",
    "Monkey",
    "Numba",
    "Owl",
    "Penguin",
    "Quail",
    "Rooster",
    "Sheep",
    "Tiger",
    "Unicorn",
    "Vulture",
    "Whale",
    "Xenops",
    "Yak",
    "Zebra"
  ],
  "shapes": [
    "assets/Database/animals/images/Ant.png",
    "assets/Database/animals/images/Bear.png",
    "assets/Database/animals/images/Crocodile.png",
    "assets/Database/animals/images/Dog.png",
    "assets/Database/animals/images/Elephant.png",
    "assets/Database/animals/images/Fox.png",
    "assets/Database/animals/images/Giraffe.png",
    "assets/Database/animals/images/Horse.png",
    "assets/Database/animals/images/Iguana.png",
    "assets/Database/animals/images/Jellyfish.png",
    "assets/Database/animals/images/Kangaroo.png",
    "assets/Database/animals/images/Lion.png",
    "assets/Database/animals/images/Monkey.png",
    "assets/Database/animals/images/Numba.png",
    "assets/Database/animals/images/Owl.png",
    "assets/Database/animals/images/Penguin.png",
    "assets/Database/animals/images/Quail.png",
    "assets/Database/animals/images/Rooster.png",
    "assets/Database/animals/images/Sheep.png",
    "assets/Database/animals/images/Tiger.png",
    "assets/Database/animals/images/Unicorn.png",
    "assets/Database/animals/images/Vulture.png",
    "assets/Database/animals/images/Whale.png",
    "assets/Database/animals/images/Xenops.png",
    "assets/Database/animals/images/Yak.png",
    "assets/Database/animals/images/Zebra.png"
  ],
  "sounds": [
    "assets/Database/animals/Sounds/ant.mp3",
    "assets/Database/animals/Sounds/bear.mp3",
    "assets/Database/animals/Sounds/crocodile.mp3",
    "assets/Database/animals/Sounds/dog.mp3",
    "assets/Database/animals/Sounds/elephant.mp3",
    "assets/Database/animals/Sounds/fox.mp3",
    "assets/Database/animals/Sounds/giraffe.mp3",
    "assets/Database/animals/Sounds/horse.mp3",
    "assets/Database/animals/Sounds/iguana.mp3",
    "assets/Database/animals/Sounds/jellyfish.mp3",
    "assets/Database/animals/Sounds/kangaroo.mp3",
    "assets/Database/animals/Sounds/lion.mp3",
    "assets/Database/animals/Sounds/monkey.mp3",
    "assets/Database/animals/Sounds/numba.mp3",
    "assets/Database/animals/Sounds/owl.mp3",
    "assets/Database/animals/Sounds/penguin.mp3",
    "assets/Database/animals/Sounds/quail.mp3",
    "assets/Database/animals/Sounds/rooster.mp3",
    "assets/Database/animals/Sounds/sheep.mp3",
    "assets/Database/animals/Sounds/tiger.mp3",
    "assets/Database/animals/Sounds/unicorn.mp3",
    "assets/Database/animals/Sounds/vulture.mp3",
    "assets/Database/animals/Sounds/whale.mp3",
    "assets/Database/animals/Sounds/xenops.mp3",
    "assets/Database/animals/Sounds/yak.mp3",
    "assets/Database/animals/Sounds/zebra.mp3"
  ],
  "questions": [
    {
      "text": "How many ants are there ?",
      "kind": "text",
      "pic": "assets/Database/animals/images/Ant.png",
      "answer": "1",
      "options": ["3", "1", "5"]
    },
    {
      "text": "Which one of these represents 7 triangles",
      "answer": "assets/D21/images/images_pictures/7/right.png",
      "kind": "pic",
      "pic": "",
      "options": [
        "assets/D21/images/images_pictures/7/right.png",
        "assets/D21/images/images_pictures/7/wrong.png"
      ]
    },
    {
      "text": "How many dots are on the frame ?",
      "kind": "text",
      "pic": "assets/D21/images/images_pictures/dots/dots.png",
      "answer": "6",
      "options": ["3", "6", "5", "7", "10", "0"]
    },
    {
      "text": "How do you write {Eight} by digit ?",
      "answer": "8",
      "kind": "text",
      "pic": "",
      "options": ["3", "6", "8", "7", "10", "0"]
    },
    {
      "text": "How many watermelons are there ?",
      "pic": "assets/D21/images/images_fruits/apple.png",
      "answer": "3",
      "kind": "text",
      "options": ["3", "1", "5", "10", "0"]
    },
    {
      "text": "Which number is larger ?",
      "answer": "7",
      "pic": "",
      "kind": "text",
      "options": ["5", "7"]
    },
    {
      "kind": "text",
      "text": "Which number is smaller ?",
      "answer": "0",
      "pic": "",
      "options": ["0", "8"]
    },
    {
      "kind": "pic",
      "text": "Which one of these is more ?",
      "answer": "assets/D21/images/images_pictures/7/right.png",
      "pic": "",
      "options": [
        "assets/D21/images/images_pictures/7/right.png",
        "assets/D21/images/images_pictures/7/wrong.png"
      ]
    },
    {
      "kind": "text",
      "text": "Count the tally marks. What number is shown?",
      "pic": "assets/D21/images/images_pictures/tally/tally.png",
      "answer": "5",
      "options": ["3", "1", "5", "10", "0"]
    },
    {
      "kind": "text",
      "text": "How many cubes are there ?",
      "pic": "assets/D21/images/images_pictures/cubes/cubes.png",
      "answer": "6",
      "options": ["3", "6", "5", "10", "0"]
    }
  ]
};

var qAnimals = {
  "questions": [
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Elephant.png",
      "answer": "Elephant",
      "options": ["Lion", "Donkey", "Elephant"]
    },
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Tiger.png",
      "answer": "Tiger",
      "options": ["Tiger", "Lion", "Kangaroo"]
    },
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Horse.png",
      "answer": "Horse",
      "options": ["Donkey", "Horse", "Zebra"]
    },
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Fox.png",
      "answer": "Fox",
      "options": ["Ox", "Fox", "Box"]
    },
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Monkey.png",
      "answer": "Monkey",
      "options": ["Numba", "Yak", "Monkey"]
    },
    {
      "kind": "text",
      "text": "What is the name of this bird?",
      "text2": "",
      "pic": "assets/Database/animals/images/Penguin.png",
      "answer": "Penguin",
      "options": ["Sheep", "Tiger", "Penguin"]
    },
    {
      "kind": "text",
      "text": "What is the name of this bird?",
      "text2": "",
      "pic": "assets/Database/animals/images/Vulture.png",
      "answer": "Vulture",
      "options": ["Vulture", "Iguana", "Rooster"]
    },
    {
      "kind": "text",
      "text": "What is the type of this fish?",
      "text2": "",
      "pic": "assets/Database/animals/images/Whale.png",
      "answer": "Whale",
      "options": ["Jellyfish", "Whale", "Unicorn"]
    },
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Sheep.png",
      "answer": "Sheep",
      "options": ["Numba", "Duck", "Sheep"]
    },
    {
      "kind": "text",
      "text": "What is the name of this animal?",
      "text2": "",
      "pic": "assets/Database/animals/images/Dog.png",
      "answer": "Dog",
      "options": ["Dog", "Cat", "Donkey"]
    },
  ]
};

var alpha = {
  "activity": "alphabet",
  "alpha": [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ],
  "names": [
    "apple",
    "ball",
    "cat",
    "duck",
    "elephant",
    "fish",
    "grapes",
    "hat",
    "iguana",
    "jelly",
    "key",
    "lion",
    "moon",
    "nest",
    "orange",
    "pig",
    "quail",
    "rocket",
    "snake",
    "turtle",
    "umbrella",
    "volcano",
    "watermelon",
    "xylophone",
    "yoyo",
    "zebra"
  ],
  "pictures": [
    "assets/Database/char/char/a.png",
    "assets/Database/char/char/b.png",
    "assets/Database/char/char/c.png",
    "assets/Database/char/char/d.png",
    "assets/Database/char/char/e.png",
    "assets/Database/char/char/f.png",
    "assets/Database/char/char/g.png",
    "assets/Database/char/char/h.png",
    "assets/Database/char/char/i.png",
    "assets/Database/char/char/j.png",
    "assets/Database/char/char/k.png",
    "assets/Database/char/char/l.png",
    "assets/Database/char/char/m.png",
    "assets/Database/char/char/n.png",
    "assets/Database/char/char/o.png",
    "assets/Database/char/char/p.png",
    "assets/Database/char/char/q.png",
    "assets/Database/char/char/r.png",
    "assets/Database/char/char/s.png",
    "assets/Database/char/char/t.png",
    "assets/Database/char/char/u.png",
    "assets/Database/char/char/v.png",
    "assets/Database/char/char/w.png",
    "assets/Database/char/char/x.png",
    "assets/Database/char/char/y.png",
    "assets/Database/char/char/z.png"
  ],
  "shapes": [
    "assets/Database/char/images/apple.png",
    "assets/Database/char/images/ball.png",
    "assets/Database/char/images/cat.png",
    "assets/Database/char/images/duck.png",
    "assets/Database/char/images/elephant.png",
    "assets/Database/char/images/fish.png",
    "assets/Database/char/images/grapes.png",
    "assets/Database/char/images/hat.png",
    "assets/Database/char/images/Iguana.png",
    "assets/Database/char/images/jelly.png",
    "assets/Database/char/images/key.png",
    "assets/Database/char/images/lion.png",
    "assets/Database/char/images/moon.png",
    "assets/Database/char/images/nest.png",
    "assets/Database/char/images/orange.png",
    "assets/Database/char/images/pig.png",
    "assets/Database/char/images/quail.png",
    "assets/Database/char/images/rocket.png",
    "assets/Database/char/images/snake.png",
    "assets/Database/char/images/turtle.png",
    "assets/Database/char/images/umbrella.png",
    "assets/Database/char/images/volcano.png",
    "assets/Database/char/images/watermelon.png",
    "assets/Database/char/images/xylophone.png",
    "assets/Database/char/images/yoyo.png",
    "assets/Database/char/images/zebra.png"
  ],
  "images": [
    "assets/Database/char/images/apple.png",
    "assets/Database/char/images/ball.png",
    "assets/Database/char/images/cat.png",
    "assets/Database/char/images/duck.png",
    "assets/Database/char/images/elephant.png",
    "assets/Database/char/images/fish.png",
    "assets/Database/char/images/grapes.png",
    "assets/Database/char/images/hat.png",
    "assets/Database/char/images/iguana.png",
    "assets/Database/char/images/jelly.png",
    "assets/Database/char/images/key.png",
    "assets/Database/char/images/lion.png",
    "assets/Database/char/images/moon.png",
    "assets/Database/char/images/nest.png",
    "assets/Database/char/images/orange.png",
    "assets/Database/char/images/pig.png",
    "assets/Database/char/images/quail.png",
    "assets/Database/char/images/rocket.png",
    "assets/Database/char/images/snake.png",
    "assets/Database/char/images/turtle.png",
    "assets/Database/char/images/umbrella.png",
    "assets/Database/char/images/volcano.png",
    "assets/Database/char/images/watermelon.png",
    "assets/Database/char/images/xylophone.png",
    "assets/Database/char/images/yoyo.png",
    "assets/Database/char/images/zebra.png",
  ],
  "sounds": [
    "assets/Database/char/Voice/A apple.mp3",
    "assets/Database/char/Voice/B Ballon.mp3",
    "assets/Database/char/Voice/C cat.mp3",
    "assets/Database/char/Voice/D Duck.mp3",
    "assets/Database/char/Voice/E Egg.mp3",
    "assets/Database/char/Voice/F Fish.mp3",
    "assets/Database/char/Voice/G Glasses.mp3",
    "assets/Database/char/Voice/H Heart.mp3",
    "assets/Database/char/Voice/I Ice craem.mp3",
    "assets/Database/char/Voice/J Jellyfish.mp3",
    "assets/Database/char/Voice/K Key.mp3",
    "assets/Database/char/Voice/L Lemon.mp3",
    "assets/Database/char/Voice/M Moon.mp3",
    "assets/Database/char/Voice/N Nest.mp3",
    "assets/Database/char/Voice/O Orange.mp3",
    "assets/Database/char/Voice/P Penguin.mp3",
    "assets/Database/char/Voice/Q Queen.mp3",
    "assets/Database/char/Voice/R Rainbow.mp3",
    "assets/Database/char/Voice/S star.mp3",
    "assets/Database/char/Voice/T Tooth.mp3",
    "assets/Database/char/Voice/U Umbrella.mp3",
    "assets/Database/char/Voice/V Volcano.mp3",
    "assets/Database/char/Voice/W Watermelon.mp3",
    "assets/Database/char/Voice/X Xylophone.mp3",
    "assets/Database/char/Voice/Y Yellow.mp3",
    "assets/Database/char/Voice/Z Zig Zag.mp3"
  ]
};

var qAlpha = {
  "questions": [
    {
      "kind": "text",
      "text": "Pick the lowercase letter that matches?",
      "text2": "S",
      "pic": "",
      "answer": "s",
      "options": ["x", "p", "s"]
    },
    {
      "kind": "text",
      "text": "Pick the uppercase letter that matches?",
      "text2": "g",
      "pic": "",
      "answer": "G",
      "options": ["E", "G", "h"]
    },
    {
      "kind": "text",
      "text": "What is the alphabet?",
      "text2": "",
      "pic": "assets/Database/char/dab.png",
      "answer": "Dabelyu",
      "options": ["Wai", "Dabelyu", "Te"]
    },
    {
      "kind": "text",
      "text": "How do you spell 'book'?",
      "text2": "",
      "pic": "assets/Database/char/book.png",
      "answer": "b-o-o-k",
      "options": ["b-o-o-k", "bi-o-o-k", "b-o-a-k"]
    },
    {
      "kind": "text",
      "text": "How do u spell 'bird'?",
      "text2": "",
      "pic": "assets/Database/char/bird.png",
      "answer": "b-i-r-d",
      "options": ["be-i-r-d", "b-ie-r-ed", "b-i-r-d"]
    },
    {
      "kind": "text",
      "text": "Which letter does the word 'Zebra' starts with?",
      "text2": "",
      "pic": "assets/Database/animals/images/Zebra.png",
      "answer": "Z",
      "options": ["C", "Z", "X"]
    },
    {
      "kind": "text",
      "text": "Which letter does the word 'fish' starts with?",
      "text2": "",
      "pic": "assets/Database/char/fish.png",
      "answer": "f",
      "options": ["f", "N", "R"]
    },
    {
      "kind": "text",
      "text": "How many letters are in the alphabet?",
      "text2": "",
      "pic": "",
      "answer": "26",
      "options": ["30", "88", "26"]
    },
    {
      "kind": "text",
      "text": "Which letter comes next?",
      "text2": "H",
      "pic": "",
      "answer": "I",
      "options": ["I", "J", "K"]
    },
    {
      "kind": "text",
      "text": "Which letter comes next?",
      "text2": "Q-R-S-",
      "pic": "",
      "answer": "T",
      "options": ["U", "T", "V"]
    },
  ]
};

var color = {
  "activity": "Colors",
  "names": [
    "Black",
    "Blue",
    "Brown",
    "Green",
    "Grey",
    "Orange",
    "Pink",
    "Purple",
    "Red",
    "White",
    "Yellow"
  ],
  "shapes": [
    "assets/Database/colors/color/BLACK.png",
    "assets/Database/colors/color/BLUE.png",
    "assets/Database/colors/color/BROWN.png",
    "assets/Database/colors/color/GREEN.png",
    "assets/Database/colors/color/GREY.png",
    "assets/Database/colors/color/ORANGE.png",
    "assets/Database/colors/color/PINK.png",
    "assets/Database/colors/color/PURPLE.png",
    "assets/Database/colors/color/RED.png",
    "assets/Database/colors/color/WHITE.png",
    "assets/Database/colors/color/YELLOW.png"
  ],
  "pictures": [
    "assets/Database/colors/pictures/BLACK.png",
    "assets/Database/colors/pictures/BLUE.png",
    "assets/Database/colors/pictures/BROWN.png",
    "assets/Database/colors/pictures/GREEN.png",
    "assets/Database/colors/pictures/GREY.png",
    "assets/Database/colors/pictures/ORANGE.png",
    "assets/Database/colors/pictures/PINK.png",
    "assets/Database/colors/pictures/PURPLE.png",
    "assets/Database/colors/pictures/RED.png",
    "assets/Database/colors/pictures/WHITE.png",
    "assets/Database/colors/pictures/YELLOW.png"
  ],
  "sounds": [
    "assets/Database/colors/Sounds/black.mp3",
    "assets/Database/colors/Sounds/blue.mp3",
    "assets/Database/colors/Sounds/brown.mp3",
    "assets/Database/colors/Sounds/green.mp3",
    "assets/Database/colors/Sounds/grey.mp3",
    "assets/Database/colors/Sounds/orange.mp3",
    "assets/Database/colors/Sounds/pink.mp3",
    "assets/Database/colors/Sounds/purple.mp3",
    "assets/Database/colors/Sounds/red.mp3",
    "assets/Database/colors/Sounds/white.mp3",
    "assets/Database/colors/Sounds/yellow.mp3"
  ],
  "questions": ["What is the name of this color ?"]
};

var qColor = {
  "questions": [
    {
      "kind": "text",
      "text": "What is the color?",
      "text2": "",
      "pic": "assets/Database/colors/color/BLUE.png",
      "answer": "Blue",
      "options": ["Orange", "Blue", "Green"]
    },
    {
      "kind": "text",
      "text": "What is the color?",
      "text2": "",
      "pic": "assets/Database/colors/color/PINK.png",
      "answer": "Pink",
      "options": ["Pink", "Purple", "Brown"]
    },
    {
      "kind": "text",
      "text": "What is the color?",
      "text2": "",
      "pic": "assets/Database/colors/color/YELLOW.png",
      "answer": "Yellow",
      "options": ["Green", "Red", "Yellow"]
    },
    {
      "kind": "text",
      "text": "What is the color of the hat? ",
      "text2": "",
      "pic": "assets/Database/colors/hat.png",
      "answer": "Green",
      "options": ["Green", "Blue", "White"]
    },
    {
      "kind": "text",
      "text": "What is the color of the shoes?",
      "text2": "",
      "pic": "assets/Database/colors/shoes.png",
      "answer": "Blue",
      "options": ["Red", "Pink", "Blue"]
    },
    {
      "kind": "text",
      "text": "What is the color of the ball?",
      "text2": "",
      "pic": "assets/Database/colors/ball.png",
      "answer": "Orange",
      "options": ["Yellow", "Orange", "Black"]
    },
    {
      "kind": "text",
      "text": "What is the color the shorts?",
      "text2": "",
      "pic": "assets/Database/colors/brown.png",
      "answer": "Brown",
      "options": ["Brown", "Red", "Blue"]
    },
    {
      "kind": "text",
      "text": "What is the color of the car?",
      "text2": "",
      "pic": "assets/Database/colors/car.png",
      "answer": "Red",
      "options": ["Pink", "Purple", "Red"]
    },
    {
      "kind": "text",
      "text": "What is the color of the fruit in the picture?",
      "text2": "",
      "pic": "assets/Database/colors/grapes.png",
      "answer": "Purple",
      "options": ["Blue", "Purple", "White"]
    },
    {
      "kind": "text",
      "text": "What is the color of the flower?",
      "text2": "",
      "pic": "assets/Database/colors/sun.png",
      "answer": "Yellow",
      "options": ["Orange", "Black", "Yellow"]
    },
  ]
};

var fruit = {
  "activity": "fruit",
  "Names": [
    "Apple",
    "Banana",
    "Cherry",
    "Dragon",
    "Elderberry",
    "Fig",
    "Grapes",
    "Honeydew",
    "Imbe Fruit",
    "Jack Fruit",
    "Kiwi",
    "Mango",
    "Nectarine",
    "Orange",
    "Peach",
    "Quince",
    "Raspberries",
    "Strawberry",
    "Tangerine",
    "Ugli fruit",
    "Voavanga",
    "Watermelon",
    "Ximenia Caffra fruit",
    "Yangmei",
    "Zwetschge"
  ],
  "shapes": [
    "assets/Database/fruits/fruits/apple.png",
    "assets/Database/fruits/fruits/banana.png",
    "assets/Database/fruits/fruits/cherries.png",
    "assets/Database/fruits/fruits/dragon.png",
    "assets/Database/fruits/fruits/elderberry.png",
    "assets/Database/fruits/fruits/fig.png",
    "assets/Database/fruits/fruits/graps.png",
    "assets/Database/fruits/fruits/honeydew melon.png",
    "assets/Database/fruits/fruits/imbe.png",
    "assets/Database/fruits/fruits/jackfruit.png",
    "assets/Database/fruits/fruits/kiwi.png",
    "assets/Database/fruits/fruits/mango.png",
    "assets/Database/fruits/fruits/nectarine.png",
    "assets/Database/fruits/fruits/orange.png",
    "assets/Database/fruits/fruits/peach.png",
    "assets/Database/fruits/fruits/quince.png",
    "assets/Database/fruits/fruits/raspberries.png",
    "assets/Database/fruits/fruits/str.png",
    "assets/Database/fruits/fruits/tangerine.png",
    "assets/Database/fruits/fruits/ug.png",
    "assets/Database/fruits/fruits/voavanga.png",
    "assets/Database/fruits/fruits/watermelon.png",
    "assets/Database/fruits/fruits/ximenia.png",
    "assets/Database/fruits/fruits/yangmei.png",
    "assets/Database/fruits/fruits/z.png"
  ],
  "Sounds": [
    "assets/Database/fruits/voice fruits/apple.mp3",
    "assets/Database/fruits/voice fruits/banana.mp3",
    "assets/Database/fruits/voice fruits/cherry.mp3",
    "assets/Database/fruits/voice fruits/dragon.mp3",
    "assets/Database/fruits/voice fruits/elderberry.mp3",
    "assets/Database/fruits/voice fruits/fig.mp3",
    "assets/Database/fruits/voice fruits/grapes.mp3",
    "assets/Database/fruits/voice fruits/honeydew melon.mp3",
    "assets/Database/fruits/voice fruits/imbe fruits.mp3",
    "assets/Database/fruits/voice fruits/jackfruit.mp3",
    "assets/Database/fruits/voice fruits/kiwi.mp3",
    "assets/Database/fruits/voice fruits/mango.mp3",
    "assets/Database/fruits/voice fruits/nectarine.mp3",
    "assets/Database/fruits/voice fruits/orange.mp3",
    "assets/Database/fruits/voice fruits/peach.mp3",
    "assets/Database/fruits/voice fruits/quince.mp3",
    "assets/Database/fruits/voice fruits/raspberries.mp3",
    "assets/Database/fruits/voice fruits/strawberry.mp3",
    "assets/Database/fruits/voice fruits/tangerine.mp3",
    "assets/Database/fruits/voice fruits/ugli fruit.mp3",
    "assets/Database/fruits/voice fruits/voavanga fruit.mp3",
    "assets/Database/fruits/voice fruits/watermelon.mp3",
    "assets/Database/fruits/voice fruits/ximenia caffra fruit.mp3",
    "assets/Database/fruits/voice fruits/yangmei fruit.mp3",
    "assets/Database/fruits/voice fruits/Zwetschge.mp3"
  ],
  "Questions": ["What is this Fruit ?"]
};

var qFruit = {
  "questions": [
    {
      "kind": "text",
      "text": "Can you name this fruit ?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/peach.png",
      "answer": "Peach",
      "options": ["Strawberry", "Mango", "Peach"]
    },
    {
      "kind": "text",
      "text": "Can you name this fruit ?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/banana.png",
      "answer": "Banana",
      "options": ["Banana", "Lemon", "Cucumber"]
    },
    {
      "kind": "text",
      "text": "Can you name this fruit ?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/mango.png",
      "answer": "Mango",
      "options": ["Fig", "Mango", "Orange"]
    },
    {
      "kind": "text",
      "text": "Can you name this fruit ?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/watermelon.png",
      "answer": "Watermelon",
      "options": ["Orange", "Watermelon", "Dragon"]
    },
    {
      "kind": "text",
      "text": "Are these grapes?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/graps.png",
      "answer": "Yes,they are.",
      "options": ["No,they are not", "No,it's not", "Yes,they are."]
    },
    {
      "kind": "text",
      "text": "Is this a jackfruit?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/sweet potato.png",
      "answer": "No,its not",
      "options": ["No,its not", "Yes,it is"]
    },
    {
      "kind": "text",
      "text": "What color is the apple?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/apple.png",
      "answer": "Red",
      "options": ["Yellow", "Blue", "Red"]
    },
    {
      "kind": "text",
      "text": "What is this?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/str.png",
      "answer": "Strawberry",
      "options": ["Apple", "Strawberry", "Lemon"]
    },
    {
      "kind": "pic",
      "text": "Which one of these is kiwi?",
      "text2": "",
      "pic": "",
      "answer": "assets/Database/fruits/fruits/kiwi.png",
      "options": [
        "assets/Database/fruits/fruits/tangerine.png",
        "assets/Database/fruits/fruits/quince.png",
        "assets/Database/fruits/fruits/kiwi.png",
      ]
    },
    {
      "kind": "pic",
      "text": "Which one of these is cherries?",
      "text2": "",
      "pic": "",
      "answer": "assets/Database/fruits/fruits/cherries.png",
      "options": [
        "assets/Database/fruits/fruits/graps.png",
        "assets/Database/fruits/fruits/cherries.png",
        "assets/Database/fruits/fruits/quince.png",
      ]
    },
  ]
};

var numbers = {
  "activity": "numbers",
  "names": [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine"
  ],
  "number": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
  "shapes": [
    "assets/Database/numbers/shapes/0.png",
    "assets/Database/numbers/shapes/1.png",
    "assets/Database/numbers/shapes/2.png",
    "assets/Database/numbers/shapes/3.png",
    "assets/Database/numbers/shapes/4.png",
    "assets/Database/numbers/shapes/5.png",
    "assets/Database/numbers/shapes/6.png",
    "assets/Database/numbers/shapes/7.png",
    "assets/Database/numbers/shapes/8.png",
    "assets/Database/numbers/shapes/9.png",
  ],
  "sounds": [
    "assets/Database/numbers/sounds/0.mp3",
    "assets/Database/numbers/sounds/1.mp3",
    "assets/Database/numbers/sounds/2.mp3",
    "assets/Database/numbers/sounds/3.mp3",
    "assets/Database/numbers/sounds/4.mp3",
    "assets/Database/numbers/sounds/5.mp3",
    "assets/Database/numbers/sounds/6.mp3",
    "assets/Database/numbers/sounds/7.mp3",
    "assets/Database/numbers/sounds/8.mp3",
    "assets/Database/numbers/sounds/9.mp3"
  ],
  "questions": ["What is the number?"]
};

var qNumbers = {
  "questions": [
    {
      "text": "How many ants are there ?",
      "text2": "",
      "kind": "text",
      "pic": "assets/Database/animals/images/Ant.png",
      "answer": "1",
      "options": ["3", "1", "5"]
    },
    {
      "text": "Which one of these represents 7 triangles",
      "text2": "",
      "answer": "assets/Database/QNumbers/right.png",
      "kind": "pic",
      "pic": "",
      "options": [
        "assets/Database/QNumbers/right.png",
        "assets/Database/QNumbers/wrong.png"
      ]
    },
    {
      "text": "How many dots are on the frame ?",
      "text2": "",
      "kind": "text",
      "pic": "assets/Database/QNumbers/dots.png",
      "answer": "6",
      "options": [
        "3",
        "6",
        "5",
      ]
    },
    {
      "text": "How do you write {Eight} by digit ?",
      "text2": "",
      "answer": "8",
      "kind": "text",
      "pic": "",
      "options": [
        "3",
        "6",
        "8",
      ]
    },
    {
      "text": "How many apples are there ?",
      "text2": "",
      "pic": "assets/Database/fruits/fruits/apple.png",
      "answer": "1",
      "kind": "text",
      "options": [
        "3",
        "1",
        "5",
      ]
    },
    {
      "text": "Which number is larger ?",
      "text2": "",
      "answer": "7",
      "pic": "",
      "kind": "text",
      "options": ["5", "7"]
    },
    {
      "kind": "text",
      "text2": "",
      "text": "Which number is smaller ?",
      "answer": "0",
      "pic": "",
      "options": ["0", "8"]
    },
    {
      "kind": "pic",
      "text2": "",
      "text": "Which one of these is bigger ?",
      "answer": "assets/Database/QNumbers/right.png",
      "pic": "",
      "options": [
        "assets/Database/QNumbers/right.png",
        "assets/Database/QNumbers/wrong.png"
      ]
    },
    {
      "kind": "text",
      "text2": "",
      "text": "Count the tally marks. What number is shown?",
      "pic": "assets/Database/QNumbers/tally.png",
      "answer": "5",
      "options": [
        "3",
        "1",
        "5",
      ]
    },
    {
      "kind": "text",
      "text2": "",
      "text": "How many cubes are there ?",
      "pic": "assets/Database/QNumbers/cubes.png",
      "answer": "6",
      "options": [
        "3",
        "6",
        "5",
      ]
    }
  ]
};

String healthyFood = '''The American Academy of Pediatrics
    Committee on Genetics has noted that those with Down syndrome are likely to develop certain health problems.
    This is thought to happen as a result of body structures not developing normally.
    Children with Down syndrome are likely to be overweight and have a higher risk of obesity.
    They burn calories at a slower rate and are frequently diagnosed with an under-active thyroid which can contribute to weight gain.
    Gastroesophageal reflux disease (GERD) is common among children with Down syndrome.Symptoms include heartburn,
    sore throat,
    regurgitation and chest pain.
    Gluten intolerance and celiac disease is also widespread and can lead to nutrient deficiency and an impaired immune system if dietary needs are avoided.Finally,
    periodontal disease becomes prevalent in adulthood so it is important to establish habits to eat foods that will decrease its likelihood.''';

String aboutUs =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

const List<Color> colors = [
  Color(0xff0191B4),
  Color(0xffFFC2BB),
  Color(0xff88CDF6),
  Color(0xff0191B4),
  Color(0xffFFC2BB),
  Color(0xff88CDF6),
];

List<String> names = [
  'Alphabet',
  'Numbers',
  'Shapes',
  'Animals',
  'Colors',
  'Fruits'
];

List<String> picNames = [
  'assets/images/child_app/level_one/abc.png',
  'assets/images/child_app/level_one/numbers.png',
  'assets/images/child_app/level_one/shapes.png',
  'assets/images/child_app/level_two/lion.png',
  'assets/images/child_app/level_two/rgb.png',
  'assets/images/child_app/level_two/fruits.png'
];

PageController controller = PageController();

List<String> drawingExcercise = [
  'assets/images/child_app/drawing/1.png',
  'assets/images/child_app/drawing/2.png',
  'assets/images/child_app/drawing/3.png',
  'assets/images/child_app/drawing/4.png',
  'assets/images/child_app/drawing/5.png',
  'assets/images/child_app/drawing/6.png',
  'assets/images/child_app/drawing/7.png',
  'assets/images/child_app/drawing/8.png',
  'assets/images/child_app/drawing/9.png',
  'assets/images/child_app/drawing/10.png',
  'assets/images/child_app/drawing/11.png',
  'assets/images/child_app/drawing/12.png',
  'assets/images/child_app/drawing/13.png',
  'assets/images/child_app/drawing/14.png',
  'assets/images/child_app/drawing/15.png',
  'assets/images/child_app/drawing/16.png',
  'assets/images/child_app/drawing/17.png',
  'assets/images/child_app/drawing/18.png',
  'assets/images/child_app/drawing/19.png',
  'assets/images/child_app/drawing/20.png',
  'assets/images/child_app/drawing/21.png',
  'assets/images/child_app/drawing/22.png',
  'assets/images/child_app/drawing/23.png',
  'assets/images/child_app/drawing/24.png',
  'assets/images/child_app/drawing/25.png',
  'assets/images/child_app/drawing/26.png',
];
