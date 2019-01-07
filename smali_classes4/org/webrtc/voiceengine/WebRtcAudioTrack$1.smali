.class Lorg/webrtc/voiceengine/WebRtcAudioTrack$1;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/voiceengine/WebRtcAudioTrack;


# direct methods
.method constructor <init>(Lorg/webrtc/voiceengine/WebRtcAudioTrack;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/voiceengine/WebRtcAudioTrack;

    .prologue
    .line 326
    iput-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioTrack$1;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 329
    return-void
.end method
