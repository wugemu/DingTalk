.class public abstract Ligi;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Ligk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;)Ljava/lang/String;
    .locals 4
    .param p1, "conn"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    .local v0, "adr":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_0

    .line 93
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;

    const-string/jumbo v3, "socket not bound"

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string/jumbo v2, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 2
    .param p1, "conn"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;
    .param p2, "f"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    new-instance v0, Ligx;

    invoke-direct {v0, p2}, Ligx;-><init>(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V

    .line 62
    .local v0, "resp":Ligx;
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;->PONG:Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;

    invoke-virtual {v0, v1}, Ligx;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata$Opcode;)V

    .line 63
    invoke-interface {p1, v0}, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;->a(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V

    .line 64
    return-void
.end method

.method public final b()Lihg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lihc;

    invoke-direct {v0}, Lihc;-><init>()V

    return-object v0
.end method

.method public b(Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;)V
    .locals 0
    .param p1, "frame"    # Lcom/alipay/android/phone/mobilesdk/socketcraft/framing/Framedata;

    .prologue
    .line 51
    return-void
.end method
