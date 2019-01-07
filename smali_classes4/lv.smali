.class public Llv;
.super Ljava/lang/Object;
.source "NetworkProxy.java"

# interfaces
.implements Lle;


# static fields
.field protected static a:Ljava/lang/String;


# instance fields
.field private b:Llr;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "ANet.NetworkProxy"

    sput-object v0, Llv;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Llv;->b:Llr;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Llv;->c:I

    .line 32
    iput-object p1, p0, Llv;->d:Landroid/content/Context;

    .line 33
    iput p2, p0, Llv;->c:I

    .line 34
    return-void
.end method

.method private a(Llr;Lanetwork/channel/aidl/ParcelableRequest;Lma;)Llo;
    .locals 4
    .param p1, "network"    # Llr;
    .param p2, "pRequest"    # Lanetwork/channel/aidl/ParcelableRequest;
    .param p3, "listenerWrapper"    # Lma;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 135
    :goto_0
    return-object v2

    .line 124
    :cond_0
    invoke-virtual {p2}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 125
    const/16 v3, -0x66

    invoke-static {p3, v3}, Llv;->a(Lma;I)Llo;

    move-result-object v2

    .local v2, "future":Llo;
    goto :goto_0

    .line 128
    .end local v2    # "future":Llo;
    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3}, Llr;->a(Lanetwork/channel/aidl/ParcelableRequest;Llq;)Llo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "future":Llo;
    goto :goto_0

    .line 129
    .end local v2    # "future":Llo;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    const/16 v3, -0x67

    invoke-static {p3, v3}, Llv;->a(Lma;I)Llo;

    move-result-object v2

    .line 131
    .restart local v2    # "future":Llo;
    const-string/jumbo v1, "[redirectAsyncCall]call asyncSend exception."

    .line 132
    .local v1, "eMsg":Ljava/lang/String;
    invoke-static {v0, v1}, Llv;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lma;I)Llo;
    .locals 5
    .param p0, "listenerWrapper"    # Lma;
    .param p1, "code"    # I

    .prologue
    .line 139
    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v1, p1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    invoke-virtual {p0, v1}, Lma;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    new-instance v1, Llt;

    invoke-direct {v1, p1}, Llt;-><init>(I)V

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Llv;->a:Ljava/lang/String;

    const-string/jumbo v2, "[handleErrorCallBack]call listenerWrapper.onFinished exception."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized a(I)Llr;
    .locals 7
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    monitor-enter p0

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    sget-object v3, Llv;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[tryGetRemoteNetworkInstance] type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "delegate":Llr;
    invoke-static {}, Lmb;->a()Llm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 108
    .local v2, "getter":Llm;
    if-eqz v2, :cond_1

    .line 110
    :try_start_1
    invoke-interface {v2, p1}, Llm;->a(I)Llr;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 115
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v3, "[tryGetRemoteNetworkInstance]get RemoteNetwork Delegate failed."

    invoke-static {v1, v3}, Llv;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "delegate":Llr;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "getter":Llm;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "eMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v1, Llv;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, p1, p0, v2}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lanet/channel/statist/ExceptionStatistic;

    const/16 v1, -0x67

    const-string/jumbo v2, "rt"

    invoke-direct {v0, v1, v3, v2}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/ExceptionStatistic;->exceptionStack:Ljava/lang/String;

    .line 153
    invoke-static {}, Lih;->a()Lij;

    move-result-object v1

    invoke-interface {v1, v0}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 154
    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "wait"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Llv;->b:Llr;

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lmh;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Llv;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lmb;->a(Landroid/content/Context;Z)V

    .line 78
    iget v0, p0, Llv;->c:I

    invoke-direct {p0, v0}, Llv;->a(I)Llr;

    move-result-object v0

    iput-object v0, p0, Llv;->b:Llr;

    .line 80
    :cond_2
    iget-object v0, p0, Llv;->b:Llr;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    sget-object v0, Llv;->a:Ljava/lang/String;

    const-string/jumbo v1, "[getLocalNetworkInstance]"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_3
    new-instance v0, Lanetwork/channel/http/HttpNetworkDelegate;

    iget-object v1, p0, Llv;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanetwork/channel/http/HttpNetworkDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llv;->b:Llr;

    goto :goto_0
.end method


# virtual methods
.method public final a(Llj;Ljava/lang/Object;Landroid/os/Handler;Llh;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "request"    # Llj;
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Llh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llj;",
            "Ljava/lang/Object;",
            "Landroid/os/Handler;",
            "Llh;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Llk;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v4}, Llv;->a(Z)V

    .line 91
    new-instance v3, Llu;

    invoke-direct {v3}, Llu;-><init>()V

    .line 92
    .local v3, "response":Llu;
    new-instance v2, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v2, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Llj;)V

    .line 93
    .local v2, "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    const/4 v1, 0x0

    .line 94
    .local v1, "listenerWrapper":Lma;
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    .line 95
    :cond_0
    new-instance v1, Lma;

    .end local v1    # "listenerWrapper":Lma;
    invoke-direct {v1, p4, p3, p2}, Lma;-><init>(Llh;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 97
    .restart local v1    # "listenerWrapper":Lma;
    :cond_1
    iget-object v4, p0, Llv;->b:Llr;

    invoke-direct {p0, v4, v2, v1}, Llv;->a(Llr;Lanetwork/channel/aidl/ParcelableRequest;Lma;)Llo;

    move-result-object v0

    .line 1091
    .local v0, "future":Llo;
    iput-object v0, v3, Llu;->a:Llo;

    .line 99
    return-object v3

    .line 90
    .end local v0    # "future":Llo;
    .end local v1    # "listenerWrapper":Lma;
    .end local v2    # "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    .end local v3    # "response":Llu;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final a(Llj;)Llk;
    .locals 4
    .param p1, "request"    # Llj;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Llv;->a(Z)V

    .line 60
    new-instance v1, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v1, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Llj;)V

    .line 61
    .local v1, "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v3, -0x66

    invoke-direct {v2, v3}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    .line 68
    :goto_0
    return-object v2

    .line 65
    :cond_0
    :try_start_0
    iget-object v2, p0, Llv;->b:Llr;

    invoke-interface {v2, v1}, Llr;->a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[syncSend]call syncSend method failed."

    invoke-static {v0, v2}, Llv;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 68
    new-instance v2, Lanetwork/channel/aidl/NetworkResponse;

    const/16 v3, -0x67

    invoke-direct {v2, v3}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_0
.end method

.method public final b(Llj;)Lll;
    .locals 4
    .param p1, "request"    # Llj;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Llv;->a(Z)V

    .line 45
    new-instance v1, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v1, p1}, Lanetwork/channel/aidl/ParcelableRequest;-><init>(Llj;)V

    .line 46
    .local v1, "pRequest":Lanetwork/channel/aidl/ParcelableRequest;
    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lls;

    const/16 v3, -0x66

    invoke-direct {v2, v3}, Lls;-><init>(I)V

    .line 53
    :goto_0
    return-object v2

    .line 50
    :cond_0
    :try_start_0
    iget-object v2, p0, Llv;->b:Llr;

    invoke-interface {v2, v1}, Llr;->b(Lanetwork/channel/aidl/ParcelableRequest;)Lll;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[getConnection]call getConnection method failed."

    invoke-static {v0, v2}, Llv;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 53
    new-instance v2, Lls;

    const/16 v3, -0x67

    invoke-direct {v2, v3}, Lls;-><init>(I)V

    goto :goto_0
.end method
