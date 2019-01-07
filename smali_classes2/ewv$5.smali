.class final Lewv$5;
.super Ljava/lang/Object;
.source "TeleFloatingVoipManager.java"

# interfaces
.implements Lied$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewv;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lewv;


# direct methods
.method constructor <init>(Lewv;)V
    .locals 0
    .param p1, "this$0"    # Lewv;

    .prologue
    .line 338
    iput-object p1, p0, Lewv$5;->a:Lewv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 343
    :pswitch_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone incoming in floating: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lewv$5;->a:Lewv;

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_PhoneInInterruption:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-static {v0, v1}, Lewv;->a(Lewv;I)V

    .line 348
    iget-object v0, p0, Lewv$5;->a:Lewv;

    invoke-static {v0}, Lewv;->c(Lewv;)V

    .line 349
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone offhook in floating: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_2
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Phone idl in floating:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 367
    return-void
.end method

.method public final a(ZZ)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "b1"    # Z

    .prologue
    .line 362
    return-void
.end method

.method public final a(ZZZ)V
    .locals 5
    .param p1, "bluetoothConnected"    # Z
    .param p2, "headsetConnected"    # Z
    .param p3, "audioConnected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 371
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewv;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Bluetooth headset: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 373
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 374
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 375
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 372
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method
