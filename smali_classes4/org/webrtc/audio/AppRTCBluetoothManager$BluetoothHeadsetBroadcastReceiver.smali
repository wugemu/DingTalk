.class Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRTCBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/AppRTCBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;


# direct methods
.method private constructor <init>(Lorg/webrtc/audio/AppRTCBluetoothManager;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;
    .param p2, "x1"    # Lorg/webrtc/audio/AppRTCBluetoothManager$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;-><init>(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 131
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v2

    sget-object v3, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v2, v3, :cond_0

    .line 196
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    .line 141
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BluetoothHeadsetBroadcastReceiver.onReceive: a=ACTION_CONNECTION_STATE_CHANGED, s="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 144
    invoke-static {v3, v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$500(Lorg/webrtc/audio/AppRTCBluetoothManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", BT state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 146
    invoke-static {v3}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 148
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    iput v4, v2, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    .line 149
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$600(Lorg/webrtc/audio/AppRTCBluetoothManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver$1;

    invoke-direct {v3, p0}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver$1;-><init>(Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .end local v1    # "state":I
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive done: BT state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v3}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    .restart local v1    # "state":I
    :cond_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 157
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 159
    if-nez v1, :cond_1

    .line 161
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stopScoAudio()V

    .line 162
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$300(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    goto :goto_1

    .line 166
    .end local v1    # "state":I
    :cond_3
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 169
    .restart local v1    # "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BluetoothHeadsetBroadcastReceiver.onReceive: a=ACTION_AUDIO_STATE_CHANGED, s="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 171
    invoke-static {v3, v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$500(Lorg/webrtc/audio/AppRTCBluetoothManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", BT state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 173
    invoke-static {v3}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 175
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$700(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    .line 176
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v2

    sget-object v3, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v2, v3, :cond_5

    .line 178
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    sget-object v3, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-static {v2, v3}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$102(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$State;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 179
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    iput v4, v2, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    .line 192
    :cond_4
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-static {v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->access$300(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    goto/16 :goto_1

    .line 182
    :cond_5
    const-string/jumbo v2, "AppRTCBluetoothManager"

    const-string/jumbo v3, "Unexpected state BluetoothHeadset.STATE_AUDIO_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    :cond_6
    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 186
    if-ne v1, v5, :cond_1

    .line 188
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0
.end method
