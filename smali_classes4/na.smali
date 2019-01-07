.class public abstract Lna;
.super Llr$a;
.source "UnifiedNetworkDelegate.java"


# instance fields
.field protected a:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Llr$a;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lna;->a:I

    .line 33
    invoke-static {p1}, Lmq;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Lmn;Llq;)Llo;
    .locals 9
    .param p1, "config"    # Lmn;
    .param p2, "listener"    # Llq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 48
    new-instance v2, Lnb;

    iget v0, p0, Lna;->a:I

    invoke-direct {v2, p1, p2, v0}, Lnb;-><init>(Lmn;Llq;I)V

    .line 1038
    invoke-static {v5}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    const-string/jumbo v0, "ANet.UnifiedRequestTask"

    const-string/jumbo v3, "request"

    iget-object v4, v2, Lnb;->a:Lmz;

    iget-object v4, v4, Lmz;->c:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Url"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, v2, Lnb;->a:Lmz;

    iget-object v7, v7, Lmz;->a:Lmn;

    .line 1146
    iget-object v7, v7, Lmn;->b:Ljava/lang/String;

    .line 1039
    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    :cond_0
    invoke-static {}, Lmh;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    iget-object v0, v2, Lnb;->a:Lmz;

    iget-object v0, v0, Lmz;->a:Lmn;

    .line 2146
    iget-object v0, v0, Lmn;->b:Ljava/lang/String;

    .line 1044
    iget-object v3, v2, Lnb;->a:Lmz;

    iget-object v3, v3, Lmz;->a:Lmn;

    invoke-virtual {v3}, Lmn;->d()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lme;->a(Ljava/lang/String;Ljava/util/Map;)Lanetwork/channel/cache/Cache;

    move-result-object v0

    .line 1047
    :goto_0
    if-eqz v0, :cond_1

    .line 1048
    iget-object v1, v2, Lnb;->a:Lmz;

    new-instance v3, Lmv;

    iget-object v4, v2, Lnb;->a:Lmz;

    invoke-direct {v3, v4, v0}, Lmv;-><init>(Lmz;Lanetwork/channel/cache/Cache;)V

    iput-object v3, v1, Lmz;->g:Lmx;

    .line 1053
    :goto_1
    iget-object v0, v2, Lnb;->a:Lmz;

    iget-object v0, v0, Lmz;->g:Lmx;

    invoke-static {v0, v8}, Lkq;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 3060
    iget-object v0, v2, Lnb;->a:Lmz;

    new-instance v1, Lnb$1;

    invoke-direct {v1, v2}, Lnb$1;-><init>(Lnb;)V

    iget-object v3, v2, Lnb;->a:Lmz;

    iget-object v3, v3, Lmz;->a:Lmn;

    .line 3122
    iget v4, v3, Lmn;->i:I

    iget v3, v3, Lmn;->g:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v4

    .line 3060
    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v4, v5, v3}, Lkq;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lmz;->h:Ljava/util/concurrent/Future;

    .line 1056
    new-instance v0, Llx;

    new-instance v1, Lmw;

    invoke-direct {v1, v2}, Lmw;-><init>(Lnb;)V

    invoke-direct {v0, v1}, Llx;-><init>(Ljava/util/concurrent/Future;)V

    .line 48
    return-object v0

    .line 1050
    :cond_1
    iget-object v0, v2, Lnb;->a:Lmz;

    new-instance v3, Lmy;

    iget-object v4, v2, Lnb;->a:Lmz;

    invoke-direct {v3, v4, v1, v1}, Lmy;-><init>(Lmz;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v3, v0, Lmz;->g:Lmx;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private c(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 8
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    new-instance v5, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v5}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    .line 64
    .local v5, "networkResponse":Lanetwork/channel/aidl/NetworkResponse;
    :try_start_0
    invoke-virtual {p0, p1}, Lna;->b(Lanetwork/channel/aidl/ParcelableRequest;)Lll;

    move-result-object v2

    check-cast v2, Lls;

    .line 65
    .local v2, "connDelegate":Lls;
    invoke-virtual {v2}, Lls;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/NetworkResponse;->setStatusCode(I)V

    .line 66
    invoke-virtual {v2}, Lls;->d()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/NetworkResponse;->setConnHeadFields(Ljava/util/Map;)V

    .line 68
    invoke-virtual {v2}, Lls;->a()Llp;

    move-result-object v4

    .line 69
    .local v4, "is":Llp;
    if-eqz v4, :cond_0

    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Lls;->a()Llp;

    move-result-object v6

    invoke-interface {v6}, Llp;->d()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5024
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lil$a;->a:Lil;

    .line 71
    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lil;->a(I)Lik;

    move-result-object v1

    .line 5042
    .local v1, "byteArray":Lik;
    :goto_0
    iget-object v6, v1, Lik;->a:[B

    .line 73
    invoke-interface {v4, v6}, Llp;->a([B)I

    move-result v3

    .local v3, "count":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 6042
    iget-object v6, v1, Lik;->a:[B

    .line 74
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteArray":Lik;
    .end local v2    # "connDelegate":Lls;
    .end local v3    # "count":I
    .end local v4    # "is":Llp;
    :catch_0
    move-exception v6

    const/16 v6, -0x67

    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/NetworkResponse;->setStatusCode(I)V

    .line 85
    :cond_0
    :goto_1
    return-object v5

    .line 76
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteArray":Lik;
    .restart local v2    # "connDelegate":Lls;
    .restart local v3    # "count":I
    .restart local v4    # "is":Llp;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/NetworkResponse;->setBytedata([B)V

    .line 6062
    iget-object v6, v2, Lls;->a:Lanetwork/channel/statist/StatisticData;

    .line 77
    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/NetworkResponse;->setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 83
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "byteArray":Lik;
    .end local v2    # "connDelegate":Lls;
    .end local v3    # "count":I
    .end local v4    # "is":Llp;
    :catch_1
    move-exception v6

    const/16 v6, -0xc9

    invoke-virtual {v5, v6}, Lanetwork/channel/aidl/NetworkResponse;->setStatusCode(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .locals 1
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lna;->c(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableRequest;Llq;)Llo;
    .locals 1
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .param p2, "listener"    # Llq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lmn;

    invoke-direct {v0, p1}, Lmn;-><init>(Lanetwork/channel/aidl/ParcelableRequest;)V

    invoke-direct {p0, v0, p2}, Lna;->a(Lmn;Llq;)Llo;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lanetwork/channel/aidl/ParcelableRequest;)Lll;
    .locals 4
    .param p1, "request"    # Lanetwork/channel/aidl/ParcelableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 53
    new-instance v0, Lmn;

    invoke-direct {v0, p1}, Lmn;-><init>(Lanetwork/channel/aidl/ParcelableRequest;)V

    .line 54
    .local v0, "config":Lmn;
    new-instance v1, Lls;

    invoke-direct {v1, v0}, Lls;-><init>(Lmn;)V

    .line 55
    .local v1, "connDelegate":Lls;
    new-instance v2, Lma;

    invoke-direct {v2, v1, v3, v3}, Lma;-><init>(Llh;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 57
    .local v2, "listenerWrapper":Lma;
    invoke-direct {p0, v0, v2}, Lna;->a(Lmn;Llq;)Llo;

    move-result-object v3

    .line 4100
    iput-object v3, v1, Lls;->b:Llo;

    .line 58
    return-object v1
.end method
