.class public final Lma;
.super Llq$a;
.source "ParcelableNetworkListenerWrapper.java"


# instance fields
.field private a:Llh;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Object;

.field private d:B


# direct methods
.method public constructor <init>(Llh;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Llh;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-direct {p0}, Llq$a;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-byte v0, p0, Lma;->d:B

    .line 33
    iput-object p1, p0, Lma;->a:Llh;

    .line 34
    if-eqz p1, :cond_3

    .line 35
    const-class v0, Llf$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-byte v0, p0, Lma;->d:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lma;->d:B

    .line 38
    :cond_0
    const-class v0, Llf$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-byte v0, p0, Lma;->d:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lma;->d:B

    .line 41
    :cond_1
    const-class v0, Llf$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-byte v0, p0, Lma;->d:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lma;->d:B

    .line 44
    :cond_2
    const-class v0, Llf$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-byte v0, p0, Lma;->d:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lma;->d:B

    .line 48
    :cond_3
    iput-object p2, p0, Lma;->b:Landroid/os/Handler;

    .line 49
    iput-object p3, p0, Lma;->c:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private a(BLjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lma;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1, p2}, Lma;->b(BLjava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lma;->b:Landroid/os/Handler;

    new-instance v1, Lma$1;

    invoke-direct {v1, p0, p1, p2}, Lma$1;-><init>(Lma;BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lma;BLjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lma;
    .param p1, "x1"    # B
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lma;->b(BLjava/lang/Object;)V

    return-void
.end method

.method private b(BLjava/lang/Object;)V
    .locals 10
    .param p1, "tag"    # B
    .param p2, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 67
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 68
    :try_start_0
    move-object v0, p2

    check-cast v0, Lanetwork/channel/aidl/ParcelableHeader;

    move-object v2, v0

    .line 69
    .local v2, "header":Lanetwork/channel/aidl/ParcelableHeader;
    iget-object v4, p0, Lma;->a:Llh;

    check-cast v4, Llf$d;

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableHeader;->getResponseCode()I

    move-result v5

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableHeader;->getHeader()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lma;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Llf$d;->onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z

    .line 70
    const/4 v4, 0x1

    invoke-static {v4}, Lanet/channel/util/ALog;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const-string/jumbo v4, "ANet.ParcelableNetworkListenerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[onResponseCode]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .end local v2    # "header":Lanetwork/channel/aidl/ParcelableHeader;
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 74
    move-object v0, p2

    check-cast v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    move-object v1, v0

    .line 75
    .local v1, "event":Lanetwork/channel/aidl/DefaultProgressEvent;
    if-eqz v1, :cond_2

    .line 76
    iget-object v4, p0, Lma;->c:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lanetwork/channel/aidl/DefaultProgressEvent;->setContext(Ljava/lang/Object;)V

    .line 79
    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Lanet/channel/util/ALog;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const-string/jumbo v4, "ANet.ParcelableNetworkListenerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[onDataReceived]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "event":Lanetwork/channel/aidl/DefaultProgressEvent;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "ANet.ParcelableNetworkListenerWrapper"

    const-string/jumbo v5, "dispatchCallback error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v9, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_3
    if-ne p1, v5, :cond_5

    .line 83
    :try_start_1
    move-object v0, p2

    check-cast v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    move-object v1, v0

    .line 84
    .local v1, "event":Lanetwork/channel/aidl/DefaultFinishEvent;
    if-eqz v1, :cond_4

    .line 85
    iget-object v4, p0, Lma;->c:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 87
    :cond_4
    iget-object v4, p0, Lma;->a:Llh;

    check-cast v4, Llf$a;

    iget-object v5, p0, Lma;->c:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Llf$a;->onFinished(Llg$a;Ljava/lang/Object;)V

    .line 88
    const/4 v4, 0x1

    invoke-static {v4}, Lanet/channel/util/ALog;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const-string/jumbo v4, "ANet.ParcelableNetworkListenerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[onFinished]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    .end local v1    # "event":Lanetwork/channel/aidl/DefaultFinishEvent;
    :cond_5
    const/16 v4, 0x8

    if-ne p1, v4, :cond_0

    .line 92
    move-object v0, p2

    check-cast v0, Llp;

    move-object v3, v0

    .line 93
    .local v3, "inputStream":Llp;
    iget-object v4, p0, Lma;->a:Llh;

    check-cast v4, Llf$b;

    iget-object v5, p0, Lma;->c:Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Llf$b;->onInputStreamGet(Llp;Ljava/lang/Object;)V

    .line 94
    const/4 v4, 0x1

    invoke-static {v4}, Lanet/channel/util/ALog;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string/jumbo v4, "ANet.ParcelableNetworkListenerWrapper"

    const-string/jumbo v5, "[onInputStreamReceived]"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-byte v0, p0, Lma;->d:B

    return v0
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 2
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultFinishEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-byte v0, p0, Lma;->d:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lma;->a(BLjava/lang/Object;)V

    .line 116
    :cond_0
    iput-object v1, p0, Lma;->a:Llh;

    .line 117
    iput-object v1, p0, Lma;->c:Ljava/lang/Object;

    .line 118
    iput-object v1, p0, Lma;->b:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    .locals 1
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultProgressEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-byte v0, p0, Lma;->d:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lma;->a(BLjava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Llp;)V
    .locals 1
    .param p1, "inputStream"    # Llp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-byte v0, p0, Lma;->d:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 133
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lma;->a(BLjava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final a(ILanetwork/channel/aidl/ParcelableHeader;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "header"    # Lanetwork/channel/aidl/ParcelableHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    iget-byte v0, p0, Lma;->d:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lma;->a(BLjava/lang/Object;)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
