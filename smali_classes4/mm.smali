.class public final Lmm;
.super Ljava/lang/Object;
.source "Repeater.java"


# instance fields
.field a:J

.field public b:Ljava/lang/String;

.field c:Lly;

.field d:Z

.field e:Lmn;

.field private f:Llq;


# direct methods
.method public constructor <init>(Llq;Lmn;)V
    .locals 3
    .param p1, "listener"    # Llq;
    .param p2, "config"    # Lmn;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lmm;->c:Lly;

    .line 26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmm;->d:Z

    .line 27
    iput-object v2, p0, Lmm;->e:Lmn;

    .line 30
    iput-object p1, p0, Lmm;->f:Llq;

    .line 31
    iput-object p2, p0, Lmm;->e:Lmn;

    .line 33
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Llq;->a()B

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmm;->d:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    iget-object v1, p0, Lmm;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmm;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 143
    .local v0, "hashCode":I
    :goto_0
    invoke-static {v0, p1}, Lml;->a(ILjava/lang/Runnable;)V

    .line 144
    const/4 v1, 0x1

    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string/jumbo v1, "ANet.Repeater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[dispatchCallBack] submitTask, hashcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm;->b:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_0
    return-void

    .line 142
    .end local v0    # "hashCode":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(IILik;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "total"    # I
    .param p3, "byteArray"    # Lik;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v1, p0, Lmm;->f:Llq;

    if-eqz v1, :cond_0

    .line 63
    iget-object v5, p0, Lmm;->f:Llq;

    .line 64
    .local v5, "l":Llq;
    new-instance v0, Lmm$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lmm$2;-><init>(Lmm;ILik;ILlq;)V

    .line 100
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lmm;->a(Ljava/lang/Runnable;)V

    .line 102
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v5    # "l":Llq;
    :cond_0
    return-void
.end method

.method public final a(ILjava/util/Map;)V
    .locals 6
    .param p1, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x2

    invoke-static {v2}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string/jumbo v2, "ANet.Repeater"

    const-string/jumbo v3, "[onResponseCode]"

    iget-object v4, p0, Lmm;->b:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    iget-object v2, p0, Lmm;->f:Llq;

    if-eqz v2, :cond_1

    .line 46
    iget-object v1, p0, Lmm;->f:Llq;

    .line 47
    .local v1, "l":Llq;
    new-instance v0, Lmm$1;

    invoke-direct {v0, p0, v1, p1, p2}, Lmm$1;-><init>(Lmm;Llq;ILjava/util/Map;)V

    .line 57
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lmm;->a(Ljava/lang/Runnable;)V

    .line 59
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "l":Llq;
    :cond_1
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 6
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    const/4 v2, 0x2

    invoke-static {v2}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const-string/jumbo v2, "ANet.Repeater"

    const-string/jumbo v3, "[onFinish] "

    iget-object v4, p0, Lmm;->b:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v2, p0, Lmm;->f:Llq;

    if-eqz v2, :cond_1

    .line 109
    iget-object v1, p0, Lmm;->f:Llq;

    .line 110
    .local v1, "l":Llq;
    new-instance v0, Lmm$3;

    invoke-direct {v0, p0, p1, v1}, Lmm$3;-><init>(Lmm;Lanetwork/channel/aidl/DefaultFinishEvent;Llq;)V

    .line 133
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmm;->a:J

    .line 134
    invoke-direct {p0, v0}, Lmm;->a(Ljava/lang/Runnable;)V

    .line 138
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "l":Llq;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lmm;->f:Llq;

    .line 139
    return-void
.end method
