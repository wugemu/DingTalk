.class public Lanet/channel/strategy/IPConnStrategy;
.super Ljava/lang/Object;
.source "IPConnStrategy.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/IPConnStrategy$1;,
        Lanet/channel/strategy/IPConnStrategy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lanet/channel/strategy/IPConnStrategy;",
        ">;",
        "Ljy;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xa826eaf97d5c5a2L


# instance fields
.field public final ip:Ljava/lang/String;

.field public transient isToRemove:Z

.field public final rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "raw"    # Lanet/channel/strategy/RawConnStrategy;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    .line 21
    iput-object p1, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;Lanet/channel/strategy/IPConnStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lanet/channel/strategy/RawConnStrategy;
    .param p3, "x2"    # Lanet/channel/strategy/IPConnStrategy$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lanet/channel/strategy/IPConnStrategy;-><init>(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lanet/channel/strategy/IPConnStrategy;)I
    .locals 2
    .param p1, "ipConnStrategy"    # Lanet/channel/strategy/IPConnStrategy;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget-object v1, p1, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    invoke-virtual {v0, v1}, Lanet/channel/strategy/RawConnStrategy;->compareTo(Lanet/channel/strategy/RawConnStrategy;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lanet/channel/strategy/IPConnStrategy;->compareTo(Lanet/channel/strategy/IPConnStrategy;)I

    move-result v0

    return v0
.end method

.method public getConnType()Lanet/channel/entity/ConnType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget-object v0, v0, Lanet/channel/strategy/RawConnStrategy;->connType:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget v0, v0, Lanet/channel/strategy/RawConnStrategy;->cto:I

    return v0
.end method

.method public getHeartbeat()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget v0, v0, Lanet/channel/strategy/RawConnStrategy;->heartbeat:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget v0, v0, Lanet/channel/strategy/RawConnStrategy;->port:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget v0, v0, Lanet/channel/strategy/RawConnStrategy;->rto:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget v0, v0, Lanet/channel/strategy/RawConnStrategy;->retry:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    invoke-virtual {v0}, Lanet/channel/strategy/RawConnStrategy;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isNeedAuth()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    iget-boolean v0, v0, Lanet/channel/strategy/RawConnStrategy;->isAuth:Z

    return v0
.end method

.method public notifyEvent(Lanet/channel/entity/EventType;Lip;)V
    .locals 1
    .param p1, "eventType"    # Lanet/channel/entity/EventType;
    .param p2, "event"    # Lip;

    .prologue
    .line 76
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    invoke-virtual {v0, p1, p2}, Lanet/channel/strategy/RawConnStrategy;->notifyEvent(Lanet/channel/entity/EventType;Lip;)V

    .line 77
    return-void
.end method

.method public resetConnStatus()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    invoke-virtual {v0}, Lanet/channel/strategy/RawConnStrategy;->resetConnStatus()V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 26
    const-string/jumbo v0, "{%s:%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lanet/channel/strategy/IPConnStrategy;->rawConnStrategy:Lanet/channel/strategy/RawConnStrategy;

    invoke-virtual {v3}, Lanet/channel/strategy/RawConnStrategy;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
