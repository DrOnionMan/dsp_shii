module SongGenerator where

import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString.Builder as BB
import Data.Foldable
import Data.List
import Types


volume :: Float
volume = 0.5

outName :: FilePath
outName = "out.bin"

sampleRate :: Hz
sampleRate = 48000.0

noteDuration :: Secs
noteDuration = 2.0

pitchStandard :: Hz
pitchStandard = 329.63

bpm :: Beats
bpm = 110.0

beatDuration :: Secs
beatDuration  = 60.0 / bpm

freqAt :: Semitone -> Float
freqAt n = pitchStandard * (( 2 ** (1.0 / 12.0) ) ** n)


note :: Semitone -> Beats -> [Pulse]
note n beats = freq (freqAt n) (beats * beatDuration)

-- Generate geometric pitch progression
gGPP :: Float -> Secs -> Float -> [Pulse]
gGPP ncount duration step = concat [freq (pitchStandard + i * step) duration | i <- [0 .. ncount]]


freq :: Hz -> Secs -> [Pulse]
freq hz seconds =  map (* volume) $ zipWith3 (\x y z -> x * y * z) release attack out 
    where 
    step = (hz * 2 * pi) / sampleRate
    attack :: [Pulse]
    attack = map (min 1.0) [0.0, 0.001 ..]
    release :: [Pulse]
    release = reverse $ take (length out) attack
    out :: [Pulse]
    out = map sin $ map (* step) [0.0 .. sampleRate * seconds]

wave :: [[Pulse]] -> [Pulse]
wave song = concat song

writeToFile :: [[Pulse]] -> FilePath -> IO ()
writeToFile song fPath = BL.writeFile fPath $ BB.toLazyByteString $ foldMap BB.floatLE $ wave song

