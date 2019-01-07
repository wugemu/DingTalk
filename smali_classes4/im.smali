.class public final Lim;
.super Ljava/lang/Object;
.source "ConnInfo.java"


# instance fields
.field public final a:Ljy;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljy;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "strategy"    # Ljy;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lim;->d:I

    .line 11
    iput v0, p0, Lim;->e:I

    .line 14
    iput-object p3, p0, Lim;->a:Ljy;

    .line 15
    iput-object p1, p0, Lim;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lim;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lim;->a:Ljy;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lim;->a:Ljy;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getPort()I

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lanet/channel/entity/ConnType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim;->a:Ljy;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim;->a:Ljy;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->isNeedAuth()Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lim;->a:Ljy;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getHeartbeat()I

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const v0, 0xafc8

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConnInfo [ip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lim;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim;->c()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",hb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
