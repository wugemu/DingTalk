.class public final Lhzw;
.super Ljava/lang/Object;
.source "AckUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Ljava/lang/String;)V
    .locals 0
    .param p0, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    .locals 3
    .param p0, "ack"    # Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;
    .param p1, "ignoreLoginStatus"    # Z

    .prologue
    .line 23
    if-eqz p0, :cond_0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    invoke-interface {p0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    invoke-interface {p0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v0, "[TAG] WK ack"

    const-string/jumbo v1, "[Auth] ack fail not login"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "not login"

    invoke-interface {p0, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
