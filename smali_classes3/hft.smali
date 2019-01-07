.class public final Lhft;
.super Ljava/lang/Object;
.source "StickPageTestCDNLocalDataAccessor.java"

# interfaces
.implements Lhfu;


# static fields
.field private static b:Lhft;


# instance fields
.field private a:Ljava/util/List;
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhft;->a:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a()Lhfu;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lhft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhft;->b:Lhft;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lhft;

    invoke-direct {v0}, Lhft;-><init>()V

    sput-object v0, Lhft;->b:Lhft;

    .line 32
    :cond_0
    sget-object v0, Lhft;->b:Lhft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhft;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhft;->a:Ljava/util/List;

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lhft;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lhft;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lhft;->b(Ljava/util/List;)V

    .line 68
    :try_start_0
    const-string/jumbo v1, "STICK_PAGE_TEST_WHITE_DOMAIN_KEY"

    new-instance v2, Lhft$2;

    invoke-direct {v2, p0}, Lhft$2;-><init>(Lhft;)V

    .line 71
    invoke-virtual {v2}, Lhft$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 69
    invoke-static {p1, v2}, Lcor;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lhft;->a:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhft;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 40
    iget-object v1, p0, Lhft;->a:Ljava/util/List;

    .line 54
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    const-string/jumbo v3, "STICK_PAGE_TEST_WHITE_DOMAIN_KEY"

    invoke-static {v3}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    :try_start_0
    new-instance v3, Lhft$1;

    invoke-direct {v3, p0}, Lhft$1;-><init>(Lhft;)V

    invoke-virtual {v3}, Lhft$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v3}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 49
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 50
    invoke-direct {p0, v1}, Lhft;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method
