.class Lcom/alibaba/sdk/android/httpdns/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static a:Lcom/alibaba/sdk/android/httpdns/b;

.field private static a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/c;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/b;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Lcom/alibaba/sdk/android/httpdns/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DBUpdater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/os/Handler;

    return-void
.end method

.method static a()Lcom/alibaba/sdk/android/httpdns/b;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Lcom/alibaba/sdk/android/httpdns/b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/b;->b()V

    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/httpdns/a/e;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p1, Lcom/alibaba/sdk/android/httpdns/a/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/a/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v0, v2, v0

    const-wide/32 v2, 0x93a80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/a/e;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/b;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/alibaba/sdk/android/httpdns/a/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/sdk/android/httpdns/a/e;->l:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, v0, Lcom/alibaba/sdk/android/httpdns/a/e;->j:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/sdk/android/httpdns/c;

    invoke-direct {v5, v0}, Lcom/alibaba/sdk/android/httpdns/c;-><init>(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    invoke-interface {v3, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/c;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/c;

    return-object v0
.end method

.method a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/b$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/httpdns/b$1;-><init>(Lcom/alibaba/sdk/android/httpdns/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/c;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/c;->a()Lcom/alibaba/sdk/android/httpdns/a/e;

    move-result-object v0

    iget-object v1, v0, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/sdk/android/httpdns/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/a/b;->b(Lcom/alibaba/sdk/android/httpdns/a/e;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method clear()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    return-void
.end method
