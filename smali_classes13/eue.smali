.class public Leue;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leue$a;
    }
.end annotation


# static fields
.field private static volatile b:Leue;


# instance fields
.field public a:Lcom/alibaba/android/searchengine/jni/Searcher;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/alibaba/android/searchengine/jni/Searcher;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/jni/Searcher;-><init>()V

    iput-object v0, p0, Leue;->a:Lcom/alibaba/android/searchengine/jni/Searcher;

    .line 59
    return-void
.end method

.method static synthetic a(Leue;)Lcom/alibaba/android/searchengine/jni/Searcher;
    .locals 1
    .param p0, "x0"    # Leue;

    .prologue
    .line 42
    iget-object v0, p0, Leue;->a:Lcom/alibaba/android/searchengine/jni/Searcher;

    return-object v0
.end method

.method public static a()Leue;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Leue;->b:Leue;

    if-nez v0, :cond_0

    .line 51
    const-class v1, Leue;

    monitor-enter v1

    .line 52
    :try_start_0
    new-instance v0, Leue;

    invoke-direct {v0}, Leue;-><init>()V

    sput-object v0, Leue;->b:Leue;

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    sget-object v0, Leue;->b:Leue;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/alibaba/android/searchengine/jni/Searcher;->isLoadFailed()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Leue;->a:Lcom/alibaba/android/searchengine/jni/Searcher;

    invoke-static {p1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/searchengine/jni/Searcher;->notifyDbClose([B)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "bizTableName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    new-instance v1, Leue$2;

    invoke-direct {v1, p0, p1, p2}, Leue$2;-><init>(Leue;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/bee/DBManager;->executeWriteTask(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "fullSyncMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Leue;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "bizTableName"    # Ljava/lang/String;
    .param p4, "fullSyncSql"    # Ljava/lang/String;
    .param p5, "fullSyncMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    const/4 v0, -0x1

    .line 194
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    new-instance v0, Leue$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Leue$3;-><init>(Leue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, p1, v0}, Lcom/alibaba/bee/DBManager;->executeWriteTask(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "selfCheckForce"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/SelfCheckResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v2

    .line 218
    :cond_1
    new-instance v0, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;-><init>()V

    .line 219
    .local v0, "ftsSelfCheckResults":Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;
    iget-object v3, p0, Leue;->a:Lcom/alibaba/android/searchengine/jni/Searcher;

    invoke-static {p1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v6, v0}, Lcom/alibaba/android/searchengine/jni/Searcher;->selfCheckStart([BZLcom/alibaba/android/searchengine/models/FtsSelfCheckResults;)I

    move-result v1

    .line 220
    .local v1, "result":I
    const-string/jumbo v3, "ftsSelfCheckStart returns %d,db=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    if-nez v1, :cond_0

    .line 225
    invoke-static {v0}, Lcom/alibaba/android/searchengine/models/SelfCheckResult;->fromFtsSelfCheckResults(Lcom/alibaba/android/searchengine/models/FtsSelfCheckResults;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "searchTask"    # Lcom/alibaba/android/searchengine/models/SearchTask;
    .param p3, "listener"    # Leug;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    if-nez p2, :cond_0

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Leue$4;

    invoke-direct {v0, p0, p3, p1, p2}, Leue$4;-><init>(Leue;Leug;Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;)V

    .line 1038
    const-string/jumbo v1, "SearchTask"

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, -0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Leue;->a:Lcom/alibaba/android/searchengine/jni/Searcher;

    invoke-static {p1}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/searchengine/jni/Searcher;->selfCheckStop([B)I

    move-result v0

    goto :goto_0
.end method
