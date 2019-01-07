.class final Leue$4;
.super Ljava/lang/Object;
.source "SearchEngineAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leue;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;Leug;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leug;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/searchengine/models/SearchTask;

.field final synthetic d:Leue;


# direct methods
.method constructor <init>(Leue;Leug;Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTask;)V
    .locals 0
    .param p1, "this$0"    # Leue;

    .prologue
    .line 257
    iput-object p1, p0, Leue$4;->d:Leue;

    iput-object p2, p0, Leue$4;->a:Leug;

    iput-object p3, p0, Leue$4;->b:Ljava/lang/String;

    iput-object p4, p0, Leue$4;->c:Lcom/alibaba/android/searchengine/models/SearchTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    new-instance v0, Leue$a;

    iget-object v1, p0, Leue$4;->d:Leue;

    iget-object v2, p0, Leue$4;->a:Leug;

    invoke-direct {v0, v1, v2}, Leue$a;-><init>(Leue;Leug;)V

    .line 261
    .local v0, "searchDataSourceListener":Leue$a;
    new-instance v2, Leuh;

    iget-object v1, p0, Leue$4;->d:Leue;

    invoke-static {v1}, Leue;->a(Leue;)Lcom/alibaba/android/searchengine/jni/Searcher;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Leuh;-><init>(Leuf;Lcom/alibaba/android/searchengine/jni/Searcher;)V

    iget-object v1, p0, Leue$4;->b:Ljava/lang/String;

    iget-object v3, p0, Leue$4;->c:Lcom/alibaba/android/searchengine/models/SearchTask;

    .line 1065
    if-eqz v3, :cond_0

    iget-object v4, v2, Leuh;->a:Leuf;

    if-eqz v4, :cond_0

    iget-object v4, v2, Leuh;->a:Leuf;

    invoke-interface {v4}, Leuf;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1072
    :try_start_0
    const-string/jumbo v5, "search"

    const-string/jumbo v6, "search"

    const-string/jumbo v7, "start do search table"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v2, v3, v1}, Leuh;->a(Lcom/alibaba/android/searchengine/models/SearchTask;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1075
    iget-object v5, v2, Leuh;->a:Leuf;

    if-eqz v5, :cond_0

    iget-object v5, v2, Leuh;->a:Leuf;

    invoke-interface {v5}, Leuf;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    iget-object v5, v2, Leuh;->a:Leuf;

    iget-object v6, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Leuf;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1080
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1081
    iget-object v3, v3, Lcom/alibaba/android/searchengine/models/SearchTask;->group:Ljava/lang/String;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_2
    iget-object v1, v2, Leuh;->a:Leuf;

    if-eqz v1, :cond_0

    iget-object v1, v2, Leuh;->a:Leuf;

    invoke-interface {v1}, Leuf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, v2, Leuh;->a:Leuf;

    invoke-interface {v1, v4}, Leuf;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v1

    .line 1084
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v3, v5, :cond_3

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v3, v5, :cond_2

    .line 1086
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
