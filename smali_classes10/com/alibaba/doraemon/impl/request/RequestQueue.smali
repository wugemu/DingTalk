.class public Lcom/alibaba/doraemon/impl/request/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# static fields
.field private static final DefaultReqeustGroup:Ljava/lang/String; = "default_request_group"


# instance fields
.field private final mAllGroupedRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/doraemon/impl/request/RequestClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAllWillLaunch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/request/RequestClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mDuplicateRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/doraemon/impl/request/RequestClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPausedGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllWillLaunch:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mPausedGroups:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mDuplicateRequest:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->addItem(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllWillLaunch:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mDuplicateRequest:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/request/RequestQueue;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mPausedGroups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestQueue;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->removeItem(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    return-void
.end method

.method private addItem(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 5
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getGroups()Ljava/util/List;

    move-result-object v1

    .line 332
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    const-string/jumbo v4, "default_request_group"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 334
    .local v2, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-nez v2, :cond_1

    .line 335
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 336
    .restart local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    const-string/jumbo v4, "default_request_group"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    :cond_2
    return-void

    .line 340
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    .local v0, "group":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 342
    .restart local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-nez v2, :cond_5

    .line 343
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 344
    .restart local v2    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mPausedGroups:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->pauseReqInGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeItem(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 6
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getGroups()Ljava/util/List;

    move-result-object v2

    .line 361
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    const-string/jumbo v5, "default_request_group"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 363
    .local v3, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 375
    .end local v3    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    :cond_1
    return-void

    .line 367
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "group":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestQueue;->mAllGroupedRequests:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 369
    .local v1, "groupRequest":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/request/RequestClient;>;"
    if-eqz v1, :cond_3

    .line 370
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addRequest2Group(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestClient"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p2, "group"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$2;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cancelRequest(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$4;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cancelRequestsInGroup(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    sget-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/RequestQueue$8;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 300
    :cond_0
    return-void
.end method

.method public deliverFinsh(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 2
    .param p1, "requestClient"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$6;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public execute(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 39
    .local v0, "threadSafe":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$1;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->execute(Lcom/alibaba/doraemon/threadpool/Thread;)V

    goto :goto_0
.end method

.method public launch(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 1
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isHugeDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getHugeDownloadThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->launch(Lcom/alibaba/doraemon/threadpool/Thread;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getRequestThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->launch(Lcom/alibaba/doraemon/threadpool/Thread;)V

    goto :goto_0
.end method

.method public onRequestFinished(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$5;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public pauseRequestInGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    const-string/jumbo v0, "default_request_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$7;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$7;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeRequestFromGroup(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestClient"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p2, "group"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v0, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$3;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resumeRequestsInGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    sget-object v0, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue$9;-><init>(Lcom/alibaba/doraemon/impl/request/RequestQueue;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 324
    :cond_0
    return-void
.end method
