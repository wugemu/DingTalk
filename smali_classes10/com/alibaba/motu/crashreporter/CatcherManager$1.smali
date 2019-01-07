.class final Lcom/alibaba/motu/crashreporter/CatcherManager$1;
.super Ljava/util/TimerTask;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/crashreporter/CatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/motu/crashreporter/CatcherManager;


# direct methods
.method constructor <init>(Lcom/alibaba/motu/crashreporter/CatcherManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/motu/crashreporter/CatcherManager;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$1;->c:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iput-object p2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 693
    :try_start_0
    const-string/jumbo v3, "com.alibaba.motu.watch.MotuWatch"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 697
    .local v1, "lClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 710
    .end local v1    # "lClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 700
    .restart local v1    # "lClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "getInstance"

    invoke-static {v1, v3}, Lhud;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 701
    .local v2, "lMainLoopWatch":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 703
    const-string/jumbo v3, "enableWatch"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$1;->a:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$1;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 704
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Boolean;

    aput-object v7, v5, v6

    .line 703
    invoke-static {v2, v3, v4, v5}, Lhud;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 707
    .end local v1    # "lClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "lMainLoopWatch":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "enable mainLoopCatcher"

    invoke-static {v3, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
