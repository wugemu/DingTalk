.class public Lcom/unicom/xiaowo/verify/d/a;
.super Ljava/lang/Object;
.source "ForceMobileNetTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/d/a$a;,
        Lcom/unicom/xiaowo/verify/d/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/unicom/xiaowo/verify/d/a;


# instance fields
.field private b:Landroid/net/ConnectivityManager$NetworkCallback;

.field private c:Landroid/net/ConnectivityManager;

.field private volatile d:Lcom/unicom/xiaowo/verify/d/a$a;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/unicom/xiaowo/verify/d/a;->a:Lcom/unicom/xiaowo/verify/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 21
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    .line 22
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    .line 23
    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    return-object v0
.end method

.method public static a()Lcom/unicom/xiaowo/verify/d/a;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/unicom/xiaowo/verify/d/a;->a:Lcom/unicom/xiaowo/verify/d/a;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/unicom/xiaowo/verify/d/a;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/d/a;->a:Lcom/unicom/xiaowo/verify/d/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/unicom/xiaowo/verify/d/a;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/d/a;-><init>()V

    sput-object v0, Lcom/unicom/xiaowo/verify/d/a;->a:Lcom/unicom/xiaowo/verify/d/a;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/unicom/xiaowo/verify/d/a;->a:Lcom/unicom/xiaowo/verify/d/a;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 114
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    .line 115
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "ConnectivityManager is null, cannot try to force a mobile connection"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    move v0, v1

    .line 178
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "TYPE_MOBILE_HIPRI network state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 123
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 124
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const-string/jumbo v4, "enableHIPRI"

    invoke-virtual {v0, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startUsingNetworkFeature for enableHIPRI result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 135
    if-ne v5, v0, :cond_3

    .line 136
    const-string/jumbo v0, "Wrong result of startUsingNetworkFeature, maybe problems"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    move v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_3
    if-nez v0, :cond_4

    .line 140
    const-string/jumbo v0, "No need to perform additional network settings"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    move v0, v2

    .line 141
    goto :goto_0

    .line 145
    :cond_4
    invoke-static {p2}, Lcom/unicom/xiaowo/verify/d/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Source address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Destination host address to route: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 152
    :goto_1
    invoke-static {p2}, Lcom/unicom/xiaowo/verify/d/g;->f(Ljava/lang/String;)I

    move-result v2

    .line 153
    if-ne v5, v2, :cond_5

    .line 154
    const-string/jumbo v0, "Wrong host address transformation, result was -1"

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 155
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 159
    :goto_2
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_6

    .line 160
    :try_start_1
    iget-object v3, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 161
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 163
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 168
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestRouteToHost result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 170
    if-nez v0, :cond_7

    .line 171
    const-string/jumbo v2, "Wrong requestRouteToHost result: expected true, but was false"

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 173
    :cond_7
    iget-object v2, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "TYPE_MOBILE_HIPRI network state after routing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 178
    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_8
    move-object p2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/unicom/xiaowo/verify/d/a;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/unicom/xiaowo/verify/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/verify/d/a$b;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1069
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    .line 1070
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1073
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1074
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1076
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1078
    new-instance v1, Lcom/unicom/xiaowo/verify/d/c;

    invoke-direct {v1, p0, p3}, Lcom/unicom/xiaowo/verify/d/c;-><init>(Lcom/unicom/xiaowo/verify/d/a;Lcom/unicom/xiaowo/verify/d/a$b;)V

    iput-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1098
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    if-eqz v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    invoke-virtual {v1}, Lcom/unicom/xiaowo/verify/d/a$a;->cancel()V

    .line 1100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    .line 1102
    :cond_0
    new-instance v1, Lcom/unicom/xiaowo/verify/d/a$a;

    invoke-direct {v1, p0, p3}, Lcom/unicom/xiaowo/verify/d/a$a;-><init>(Lcom/unicom/xiaowo/verify/d/a;Lcom/unicom/xiaowo/verify/d/a$b;)V

    iput-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    .line 1103
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    invoke-virtual {v1}, Lcom/unicom/xiaowo/verify/d/a$a;->start()Landroid/os/CountDownTimer;

    .line 1104
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/d/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v0

    invoke-interface {p3, v3}, Lcom/unicom/xiaowo/verify/d/a$b;->a(Landroid/net/Network;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 51
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 52
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unicom/xiaowo/verify/d/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/unicom/xiaowo/verify/d/b;-><init>(Lcom/unicom/xiaowo/verify/d/a;Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/verify/d/a$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 208
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/d/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    .line 220
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/d/a$a;->cancel()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->d:Lcom/unicom/xiaowo/verify/d/a$a;

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 231
    :cond_3
    :goto_1
    return-void

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/d/a;->c:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
