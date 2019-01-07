.class public final Liyy;
.super Ljava/lang/Object;
.source "DispatchMessage.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Receive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Receive",
        "<",
        "Lcom/laiwang/protocol/core/Request;",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Liyy;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Liyy;

    invoke-direct {v0}, Liyy;-><init>()V

    sput-object v0, Liyy;->a:Liyy;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Liyy;->b:Ljava/util/Map;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Liyy;->c:Ljava/util/concurrent/ExecutorService;

    .line 34
    const-string/jumbo v0, "/s/.*"

    invoke-static {v0, p0}, Lcom/laiwang/protocol/android/LWP;->subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 35
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x32

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Liyy;->c:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method

.method private static a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response;
    .locals 2
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;
    .param p1, "status"    # Lcom/laiwang/protocol/core/Constants$Status;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v0

    .line 111
    .local v0, "builder":Lcom/laiwang/protocol/core/Response$Builder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/core/Response$Builder;->payload([B)Lcom/laiwang/protocol/core/Response$Builder;

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Liyy;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response;
    .locals 1
    .param p0, "x0"    # Liyy;
    .param p1, "x1"    # Lcom/laiwang/protocol/core/Request;
    .param p2, "x2"    # Lcom/laiwang/protocol/core/Constants$Status;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1, p2, p3}, Liyy;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    .local p1, "handler":Lcom/laiwang/idl/client/push/ReceiverMessageHandler;, "Lcom/laiwang/idl/client/push/ReceiverMessageHandler<Ljava/lang/Object;>;"
    iget-object v0, p0, Liyy;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public final synthetic apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 23
    check-cast p1, Lcom/laiwang/protocol/core/Request;

    .line 1045
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Request;->url()Ljava/lang/String;

    move-result-object v0

    .line 1120
    const-string/jumbo v1, "/s/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1046
    :cond_0
    if-nez v0, :cond_1

    .line 1047
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    .line 2106
    invoke-static {p1, v0, v2}, Liyy;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    .line 1047
    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 1053
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v1, p0, Liyy;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;

    .line 1051
    if-nez v0, :cond_2

    .line 1052
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    .line 3106
    invoke-static {p1, v0, v2}, Liyy;->a(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    .line 1052
    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 1055
    :cond_2
    new-instance v1, Liyy$1;

    invoke-direct {v1, p0, p2, p1}, Liyy$1;-><init>(Liyy;Lcom/laiwang/protocol/lang/Callback;Lcom/laiwang/protocol/core/Request;)V

    .line 1085
    iget-object v2, p0, Liyy;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Liyy$2;

    invoke-direct {v3, p0, p1, v1, v0}, Liyy$2;-><init>(Liyy;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Lcom/laiwang/idl/client/push/ReceiverMessageHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
