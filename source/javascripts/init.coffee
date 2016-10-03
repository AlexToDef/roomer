document.addEventListener "DOMContentLoaded", ->

  window.urs = [
    {
      coords: { x: 779, y: 459 },
      name: 'Илья Рогозин',
      status: 3,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },
    {
      coords: { x: 645, y: 544 },
      name: 'Олег Федоткин',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/516/51684.png',
      roomId: 1
    },
    {
      coords: { x: 682, y: 521 },
      name: 'Антон Сатин',
      status: 2,
      avatar: 'http://s019.radikal.ru/i601/1601/28/4377252fe114.png',
      roomId: 1
    },
    {
      coords: { x: 572, y: 591 },
      name: 'Юрий Костылев',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },
    {
      coords: { x: 623, y: 533 },
      name: 'Алексей',
      status: 4,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },
    {
      coords: { x: 658, y: 509 },
      name: 'Борис Гущин',
      status: 3,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },
    {
      coords: { x: 695, y: 483 },
      name: 'Андрей',
      status: 2,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },
    {
      coords: { x: 730, y: 458 },
      name: 'Александр',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },
    {
      coords: { x: 764, y: 434 },
      name: 'Артур Егоров',
      status: 1,
      avatar: 'http://avatarfiles.alphacoders.com/454/45468.png',
      roomId: 1
    },

    {
      coords: { x: 588, y: 483 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },
    {
      coords: { x: 625, y: 457 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },
    {
      coords: { x: 656, y: 435 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },
    {
      coords: { x: 693, y: 408 },
      name: 'Комната 1 Пользователь',
      status: 4,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },
    {
      coords: { x: 724, y: 387 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },

    {
      coords: { x: 711, y: 364 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },
    {
      coords: { x: 645, y: 416 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg'
    },
    {
      coords: { x: 597, y: 454 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },
    {
      coords: { x: 548, y: 493 },
      name: 'Комната 1 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 1
    },

    {
      coords: { x: 495, y: 475 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },
    {
      coords: { x: 537, y: 443 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },
    {
      coords: { x: 567, y: 419 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },
    {
      coords: { x: 596, y: 396 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },
    {
      coords: { x: 511, y: 294 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },
    {
      coords: { x: 438, y: 355 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },
    {
      coords: { x: 434, y: 379 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 2
    },

    {
      coords: { x: 234, y: 598 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 199, y: 575 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 163, y: 551 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 128, y: 528 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 267, y: 547 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 235, y: 526 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 198, y: 501},
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 162, y: 478 },
      name: 'Комната 2 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 195, y: 403 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 132, y: 355 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 52, y: 477} ,
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },
    {
      coords: { x: 85, y: 427 },
      name: 'Комната 3 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 3
    },

    {
      coords: { x: 231, y: 274 },
      name: 'Комната 4 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 4
    },
    {
      coords: { x: 258, y: 257 },
      name: 'Комната 4 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 4
    },

    {
      coords: { x: 586, y: 228 },
      name: 'Директор',
      status: 2,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 5
    },

    {
      coords: { x: 85, y: 427 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 412, y: 39 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 392, y: 66 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 362, y: 98 },
      name: 'Комната 5 Пользователь',
      status: 4,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 329, y: 127 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 266, y: 185 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 369, y: 125 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 349, y: 145 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 303, y: 224 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },

    {
      coords: { x: 479, y: 96 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 419, y: 158 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 359, y: 274 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 509, y: 139 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 479, y: 156 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 445, y: 187 },
      name: 'Комната 5 Пользователь',
      status: 4,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },

    {
      coords: { x: 541, y: 174 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 491, y: 233 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
    {
      coords: { x: 459, y: 261 },
      name: 'Комната 5 Пользователь',
      status: 1,
      avatar: 'http://static.comicvine.com/uploads/original/14/147603/2835465-3_male_neutral_large_large.jpg',
      roomId: 6
    },
  ]
