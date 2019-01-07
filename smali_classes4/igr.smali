.class public final Ligr;
.super Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;
.source "Draft_17.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ligy;)Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Ligy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 10
    invoke-static {p1}, Ligr;->b(Lihd;)I

    move-result v0

    .line 11
    .local v0, "v":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    .line 13
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;->NOT_MATCHED:Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public final a(Ligz;)Ligz;
    .locals 2
    .param p1, "request"    # Ligz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft_10;->a(Ligz;)Ligz;

    .line 19
    const-string/jumbo v0, "Sec-WebSocket-Version"

    const-string/jumbo v1, "13"

    invoke-interface {p1, v0, v1}, Ligz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p1
.end method

.method public final c()Lcom/alipay/android/phone/mobilesdk/socketcraft/drafts/Draft;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ligr;

    invoke-direct {v0}, Ligr;-><init>()V

    return-object v0
.end method
