.class Lorg/webrtc/voiceengine/AudioManagerAndroid$1;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/AudioManagerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/voiceengine/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/voiceengine/AudioManagerAndroid;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/voiceengine/AudioManagerAndroid;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$1;->this$0:Lorg/webrtc/voiceengine/AudioManagerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 84
    invoke-static {}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AudioManager playback pause"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 87
    invoke-static {}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AudioManager playback resume"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$1;->this$0:Lorg/webrtc/voiceengine/AudioManagerAndroid;

    invoke-static {v0}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->access$100(Lorg/webrtc/voiceengine/AudioManagerAndroid;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$1;->this$0:Lorg/webrtc/voiceengine/AudioManagerAndroid;

    iget-object v1, v1, Lorg/webrtc/voiceengine/AudioManagerAndroid;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 91
    invoke-static {}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AudioManager abandon audio focus"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
