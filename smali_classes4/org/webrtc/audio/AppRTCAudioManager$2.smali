.class Lorg/webrtc/audio/AppRTCAudioManager$2;
.super Ljava/lang/Object;
.source "AppRTCAudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/audio/AppRTCAudioManager;->start(Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/audio/AppRTCAudioManager;


# direct methods
.method constructor <init>(Lorg/webrtc/audio/AppRTCAudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/audio/AppRTCAudioManager;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager$2;->this$0:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 299
    :pswitch_0
    const-string/jumbo v0, "AUDIOFOCUS_INVALID"

    .line 302
    .local v0, "typeOfChange":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAudioFocusChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    return-void

    .line 278
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "AUDIOFOCUS_GAIN"

    .line 279
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    .line 282
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 284
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE"

    .line 285
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    .line 288
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "AUDIOFOCUS_LOSS"

    .line 291
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    .line 294
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v0    # "typeOfChange":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 297
    .restart local v0    # "typeOfChange":Ljava/lang/String;
    goto :goto_0

    .line 276
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
