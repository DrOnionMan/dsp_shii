import System.Process
import Text.Printf
import Songs
import Types
import SongGenerator


play :: [[Pulse]] -> IO ()
play song = do
  writeToFile song outName
  _ <- runCommand $ printf "ffplay -showmode 1 -f f32le -ar %f %s" sampleRate outName
  return ()
