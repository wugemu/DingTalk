.class public final Limg;
.super Landroid/telephony/PhoneStateListener;
.source "AlipayVoiceRecorder.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Limg;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 185
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AlipayVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Call state changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 200
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Limg;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p0, Limg;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Limg;->a:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
