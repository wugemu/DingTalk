.class public final Lcom/taobao/artc/audio/ArtcAudioManager$2;
.super Ljava/lang/Object;
.source "ArtcAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/audio/ArtcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/audio/ArtcAudioManager;


# direct methods
.method public constructor <init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/audio/ArtcAudioManager;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$2;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 205
    :pswitch_0
    const-string/jumbo v0, "AUDIOFOCUS_INVALID"

    .line 208
    .local v0, "typeOfChange":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "ArtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAudioFocusChange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void

    .line 184
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "AUDIOFOCUS_GAIN"

    .line 185
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    .line 188
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE"

    .line 191
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    .line 194
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "AUDIOFOCUS_LOSS"

    .line 197
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    .line 200
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 203
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
