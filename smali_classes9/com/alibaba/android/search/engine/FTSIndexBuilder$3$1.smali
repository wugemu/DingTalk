.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;
.super Ljava/lang/Object;
.source "FTSIndexBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;->beforeProcess(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->c:Lcom/alibaba/android/search/engine/FTSIndexBuilder$3;

    iput-object p2, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 267
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->z()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Leue;->a()Leue;

    invoke-static {}, Leue;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Leue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 276
    .local v6, "result":I
    const-string/jumbo v0, "notifyTableReady returns %d,dbName=%s,tableName=%s"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->b:Ljava/lang/String;

    aput-object v3, v1, v7

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-nez v6, :cond_2

    .line 280
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->z()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_full_sync_when_table_create"

    invoke-virtual {v0, v1, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->l()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "bizType":Ljava/lang/String;
    invoke-static {}, Leue;->a()Leue;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    sget-object v5, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v5}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Leue;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 286
    const-string/jumbo v0, "fullSyncIndex returns %d,bizType=%s,tableName=%s"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    aput-object v2, v1, v7

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$3$1;->a:Ljava/lang/String;

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
