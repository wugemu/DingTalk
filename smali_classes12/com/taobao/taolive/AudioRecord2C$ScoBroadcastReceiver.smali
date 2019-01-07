.class Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioRecord2C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/AudioRecord2C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/AudioRecord2C;


# direct methods
.method private constructor <init>(Lcom/taobao/taolive/AudioRecord2C;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/taolive/AudioRecord2C;Lcom/taobao/taolive/AudioRecord2C$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/taolive/AudioRecord2C;
    .param p2, "x1"    # Lcom/taobao/taolive/AudioRecord2C$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;-><init>(Lcom/taobao/taolive/AudioRecord2C;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "AudioRecord2C"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Audio SCO action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 161
    .local v3, "state":I
    if-ne v3, v9, :cond_1

    .line 162
    const-string/jumbo v4, "AudioRecord2C"

    const-string/jumbo v5, "bluetooth connected!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v3    # "state":I
    :cond_1
    if-nez v3, :cond_0

    .line 164
    const-string/jumbo v4, "AudioRecord2C"

    const-string/jumbo v5, "bluetooth disconnected!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :try_start_0
    iget-object v4, p0, Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v4}, Lcom/taobao/taolive/AudioRecord2C;->access$100(Lcom/taobao/taolive/AudioRecord2C;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "state":I
    :cond_2
    const-string/jumbo v4, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    .line 172
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const-string/jumbo v4, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 175
    .restart local v3    # "state":I
    const-string/jumbo v4, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, "preState":I
    if-nez v3, :cond_3

    .line 177
    const-string/jumbo v4, "AudioRecord2C"

    const-string/jumbo v5, "bluetooth disconnecteddd!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :try_start_1
    iget-object v4, p0, Lcom/taobao/taolive/AudioRecord2C$ScoBroadcastReceiver;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v4}, Lcom/taobao/taolive/AudioRecord2C;->access$100(Lcom/taobao/taolive/AudioRecord2C;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :cond_3
    :goto_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-ne v2, v9, :cond_0

    .line 186
    const-string/jumbo v4, "AudioRecord2C"

    const-string/jumbo v5, "bluetooth connecteddd!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :catch_1
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
