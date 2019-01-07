.class Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRTCAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredHeadsetReceiver"
.end annotation


# static fields
.field private static final HAS_MIC:I = 0x1

.field private static final HAS_NO_MIC:I = 0x0

.field private static final STATE_PLUGGED:I = 0x1

.field private static final STATE_UNPLUGGED:I


# instance fields
.field final synthetic this$0:Lorg/webrtc/audio/AppRTCAudioManager;


# direct methods
.method private constructor <init>(Lorg/webrtc/audio/AppRTCAudioManager;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;->this$0:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/audio/AppRTCAudioManager;Lorg/webrtc/audio/AppRTCAudioManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/audio/AppRTCAudioManager;
    .param p2, "x1"    # Lorg/webrtc/audio/AppRTCAudioManager$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;-><init>(Lorg/webrtc/audio/AppRTCAudioManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 182
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 183
    .local v2, "state":I
    const-string/jumbo v3, "microphone"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, "microphone":I
    const-string/jumbo v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WiredHeadsetReceiver.onReceive"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/utils/AppRTCUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ": a="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", s="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_0

    const-string/jumbo v3, "unplugged"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", m="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v4, :cond_1

    const-string/jumbo v3, "mic"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", n="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", sb="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;->isInitialStickyBroadcast()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    iget-object v6, p0, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;->this$0:Lorg/webrtc/audio/AppRTCAudioManager;

    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v6, v3}, Lorg/webrtc/audio/AppRTCAudioManager;->access$002(Lorg/webrtc/audio/AppRTCAudioManager;Z)Z

    .line 191
    iget-object v3, p0, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;->this$0:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-virtual {v3}, Lorg/webrtc/audio/AppRTCAudioManager;->updateAudioDeviceState()V

    .line 192
    return-void

    .line 186
    :cond_0
    const-string/jumbo v3, "plugged"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "no mic"

    goto :goto_1

    :cond_2
    move v3, v5

    .line 190
    goto :goto_2
.end method
