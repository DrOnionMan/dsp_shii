module Songs where
import Types
import SongGenerator

doom :: [[Pulse]]
doom =
  [ note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 0.2, note 0 0.2, note 0 0.2, note 7 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 1.0,
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 0.2, note 0 0.2, note 0 0.2, note 7 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 1.0,
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 0.2, note 0 0.2, note 0 0.2, note 7 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 1.0,
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2, note 5 0.2, note 0 0.2, note 0 0.2, note 7 0.2,
    note 8 0.2, -- 3 C
    note 0 0.2, note 0 0.2,
    note 12 0.2, -- 3 E
    note 0 0.2, note 0 0.2,
    note 10 0.2, -- 3 D
    note 0 0.2, note 0 0.2,
    note 12 0.17, note 10 0.17, note 8 0.17, note 5 0.17, note 12 0.17, note 5 0.17, note 10 0.17, note 12 0.17, note 5 0.17, note 12 0.17, note 10 0.17
  ]




sandstorm :: [[Float]]
sandstorm = 
  [ note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.5,
    note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.5,
    note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.5,
    note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.5,
    note (-2) 0.5,
    note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.5,
    note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.25, note 0 0.5,
    note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.25, note 5 0.5,
    note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.25, note 3 0.5,
    note (-2) 0.5
  ]
