.class final Lekz$1;
.super Ljava/lang/Object;
.source "SplashDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekz;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lekz;


# direct methods
.method constructor <init>(Lekz;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lekz;

    .prologue
    .line 37
    iput-object p1, p0, Lekz$1;->c:Lekz;

    iput-object p2, p0, Lekz$1;->a:Ljava/util/List;

    iput-object p3, p0, Lekz$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    const/4 v3, 0x0

    .line 42
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lekz$1;->c:Lekz;

    invoke-static {v4}, Lekz;->b(Lekz;)Lcom/alibaba/bee/DBManager;

    move-result-object v4

    iget-object v5, p0, Lekz$1;->c:Lekz;

    invoke-static {v5}, Lekz;->a(Lekz;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    const-class v7, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    const-string/jumbo v8, "tb_splash_data"

    .line 43
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 44
    iget-object v4, p0, Lekz$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekr;

    .line 45
    .local v2, "splashDataObject":Lekr;
    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->toDBEntry(Lekr;)Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    move-result-object v1

    .line 46
    .local v1, "splashDataEntry":Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
    invoke-virtual {v1, v3}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 47
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 48
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 49
    iget-object v5, p0, Lekz$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    .end local v1    # "splashDataEntry":Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
    .end local v2    # "splashDataObject":Lekr;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "splash"

    const-string/jumbo v5, "splash"

    const-string/jumbo v6, "bulkMerge failed: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {v3}, Lekz;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 54
    :cond_0
    invoke-static {v3}, Lekz;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lekz;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method
