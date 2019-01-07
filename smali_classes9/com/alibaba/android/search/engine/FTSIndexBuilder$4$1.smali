.class final Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;
.super Ljava/lang/Object;
.source "FTSIndexBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;->onCreate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->c:Lcom/alibaba/android/search/engine/FTSIndexBuilder$4;

    iput-object p2, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    invoke-static {}, Leue;->a()Leue;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Leue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 311
    .local v1, "result":I
    const-string/jumbo v2, "notifyTableReady  returns %d,dbName=%s,tableName=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->a:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->b:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_full_sync_when_table_create"

    invoke-virtual {v2, v3, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/search/engine/FTSIndexBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "bizType":Ljava/lang/String;
    invoke-static {}, Leue;->a()Leue;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/engine/FTSIndexBuilder$4$1;->a:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->UnForceSync:Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/engine/FTSIndexBuilder$FullSyncMode;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Leue;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 316
    const-string/jumbo v2, "fullSyncIndex returns %d,bizType=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .end local v0    # "bizType":Ljava/lang/String;
    :cond_0
    return-void
.end method
