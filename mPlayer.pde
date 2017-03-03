///////Import Media Player
import android.media.MediaPlayer;
import android.content.res.AssetFileDescriptor;
import android.content.Context;
import android.app.Activity;

MediaPlayer mp;
Context context; 
Activity act;
AssetFileDescriptor afd;
/////////////////

void mPlayer(){

//Initialize Media Player
  act = this.getActivity();
  context = act.getApplicationContext();
  try {
    mp = new MediaPlayer();
    afd = context.getAssets().openFd("light3.mp3");//which is in the data folder
    mp.setDataSource(afd.getFileDescriptor(),afd.getStartOffset(),afd.getLength());
    mp.prepare();
 } 
  catch(IOException e) {
   println("file did not load");
 }
  
  mp.start();
  mp.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
    public void onCompletion(MediaPlayer mp) {
        playSong(); 
    }
});
  
  
  //End of Media Player 
}

public void  playSong(){
        // Play song
        try {
            mp.reset();
            afd = context.getAssets().openFd("hex6.mp3");//which is in the data folder
            mp.setDataSource(afd.getFileDescriptor(),afd.getStartOffset(),afd.getLength());
            mp.prepare();
            mp.start();
            mp.setLooping(true); 
      
        }  catch (IOException e) {
            e.printStackTrace();
        }
    }