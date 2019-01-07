.class public Lcom/alibaba/laiwang/alive/b;
.super Ljava/lang/Object;
.source "AccsRegReceiver.java"

# interfaces
.implements Ljia;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "dingding.im.push"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-class v0, Lcom/alibaba/laiwang/xpn/accs/AccsCallbackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindApp(I)V
    .locals 3
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    const-string/jumbo v0, "[TAG] XPN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[XPN] accs onBindApp errorCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onBindUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    const-string/jumbo v0, "[TAG] XPN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[XPN] accs onBindUser errorCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    const-string/jumbo v0, "[TAG] XPN"

    const-string/jumbo v1, "[XPN] accs ondata"

    const-string/jumbo v2, "base"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onSendData(Ljava/lang/String;I)V
    .locals 0
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 60
    return-void
.end method

.method public onUnbindApp(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 45
    return-void
.end method

.method public onUnbindUser(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 55
    return-void
.end method
