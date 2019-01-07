.class public abstract Lcom/alibaba/alimei/sdk/displayer/Displayer;
.super Ljava/lang/Object;
.source "Displayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lyd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected hasLoading:Z

.field protected mAccountName:Ljava/lang/String;

.field protected mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mListDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;

.field protected mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field protected final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 31
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->hasLoading:Z

    .line 356
    invoke-static {}, Lafv;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mUIHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mListDatas:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mAccountName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 359
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method protected add(ZLjava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "isClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p2, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 170
    .local v1, "isNotifyDataChanged":Z
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 171
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 172
    .local v0, "data":Lyd;, "TT;"
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v0, v4}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->addSingleData(Ljava/util/List;Lyd;Z)Z

    move-result v2

    .line 173
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 174
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "data":Lyd;, "TT;"
    .end local v2    # "result":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->handleDataSorting(Ljava/util/List;)V

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyDataChanged()V

    .line 182
    :cond_3
    return-void
.end method

.method protected varargs add(ZLjava/util/List;[Lyd;)V
    .locals 6
    .param p1, "isClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<TT;>;[TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p2, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "datas":[Lyd;, "[TT;"
    const/4 v4, 0x0

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 146
    :cond_0
    const/4 v1, 0x0

    .line 147
    .local v1, "isNotifyDataChanged":Z
    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    .line 148
    array-length v5, p3

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, p3, v3

    .line 149
    .local v0, "data":Lyd;, "TT;"
    invoke-virtual {p0, p2, v0, v4}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->addSingleData(Ljava/util/List;Lyd;Z)Z

    move-result v2

    .line 150
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 151
    const/4 v1, 0x1

    .line 148
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "data":Lyd;, "TT;"
    .end local v2    # "result":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->handleDataSorting(Ljava/util/List;)V

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyDataChanged()V

    .line 159
    :cond_3
    return-void
.end method

.method protected addSingleData(Ljava/util/List;Lyd;Z)Z
    .locals 2
    .param p3, "isNotifyChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;TT;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 221
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "data":Lyd;, "TT;"
    invoke-interface {p2}, Lyd;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->isContains(Ljava/util/List;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract executeLoad()V
.end method

.method protected find(Ljava/util/List;J)I
    .locals 6
    .param p2, "dataId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;J)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, -0x1

    .line 316
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v1, v3

    .line 328
    :cond_1
    :goto_0
    return v1

    .line 319
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 320
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 321
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 322
    .local v0, "data":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "data":Lyd;, "TT;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catch_0
    move-exception v4

    :cond_3
    move v1, v3

    .line 328
    goto :goto_0
.end method

.method public declared-synchronized forceReload()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->executeLoad()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->hasLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAllDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mListDatas:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 444
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData(Ljava/util/List;J)Lyd;
    .locals 4
    .param p2, "dataId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 338
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 340
    .local v0, "data":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 344
    .end local v0    # "data":Lyd;, "TT;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 452
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected handleDataSorting(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 354
    :cond_0
    return-void
.end method

.method public isContains(Ljava/util/List;J)Z
    .locals 4
    .param p2, "dataId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;J)Z"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 301
    .local v0, "data":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 302
    const/4 v2, 0x1

    .line 305
    .end local v0    # "data":Lyd;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized load()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->hasLoading:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->executeLoad()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->hasLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyDataChanged()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 369
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 370
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 372
    .local v0, "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    new-instance v2, Lcom/alibaba/alimei/sdk/displayer/Displayer$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 382
    .end local v0    # "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    :cond_0
    return-void
.end method

.method protected notifyLoadError(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 425
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 426
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 427
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 429
    .local v0, "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    new-instance v2, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/alimei/sdk/displayer/Displayer$5;-><init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 436
    .end local v0    # "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    :cond_0
    return-void
.end method

.method protected notifyLoadStarted()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 385
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 386
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 388
    .local v0, "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    new-instance v2, Lcom/alibaba/alimei/sdk/displayer/Displayer$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 396
    .end local v0    # "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    :cond_0
    return-void
.end method

.method protected notifyLoadSuccess()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 412
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 415
    .local v0, "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    new-instance v2, Lcom/alibaba/alimei/sdk/displayer/Displayer$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer$4;-><init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 422
    .end local v0    # "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    :cond_0
    return-void
.end method

.method protected notifyPreLoadSuccess()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 399
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 400
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 402
    .local v0, "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    new-instance v2, Lcom/alibaba/alimei/sdk/displayer/Displayer$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer$3;-><init>(Lcom/alibaba/alimei/sdk/displayer/Displayer;Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 409
    .end local v0    # "d":Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;
    :cond_0
    return-void
.end method

.method public abstract onRelease()V
.end method

.method public registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .prologue
    .line 58
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->hasLoading:Z

    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->onRelease()V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs remove(Ljava/util/List;[J)V
    .locals 10
    .param p2, "dataIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;[J)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 267
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v4, 0x0

    .line 272
    .local v4, "isNotifyDataChanged":Z
    new-instance v1, Ljava/util/HashMap;

    array-length v7, p2

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 273
    .local v1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    array-length v8, p2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget-wide v2, p2, v7

    .line 274
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 275
    .local v6, "lid":Ljava/lang/Long;
    invoke-virtual {v1, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 278
    .end local v2    # "id":J
    .end local v6    # "lid":Ljava/lang/Long;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 279
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 281
    .local v0, "data":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 282
    .restart local v6    # "lid":Ljava/lang/Long;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 284
    const/4 v4, 0x1

    goto :goto_2

    .line 287
    .end local v0    # "data":Lyd;, "TT;"
    .end local v6    # "lid":Ljava/lang/Long;
    :cond_4
    if-eqz v4, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyDataChanged()V

    goto :goto_0
.end method

.method protected removeBySingleId(Ljava/util/List;JZ)Z
    .locals 4
    .param p2, "id"    # J
    .param p4, "isNotifyDataChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;JZ)Z"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 254
    .local v0, "data":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 256
    const/4 v2, 0x1

    .line 259
    .end local v0    # "data":Lyd;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 50
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mAccountName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSortComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mComparator:Ljava/util/Comparator;

    if-eq v0, p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mComparator:Ljava/util/Comparator;

    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->handleDataSorting(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyDataChanged()V

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .prologue
    .line 71
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/Displayer;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected varargs update(Ljava/util/List;[Lyd;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;[TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "datas":[Lyd;, "[TT;"
    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    array-length v7, p2

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    .local v2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;TT;>;"
    array-length v8, p2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    .line 194
    .local v0, "d":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "d":Lyd;, "TT;"
    :cond_2
    const/4 v3, 0x0

    .line 198
    .local v3, "isNotifyDataChanged":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v6, "updateResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 200
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 201
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyd;

    .line 202
    .local v1, "data":Lyd;, "TT;"
    invoke-interface {v1}, Lyd;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 203
    .local v5, "lid":Ljava/lang/Long;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 204
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 205
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v3, 0x1

    goto :goto_2

    .line 209
    .end local v1    # "data":Lyd;, "TT;"
    .end local v5    # "lid":Ljava/lang/Long;
    :cond_4
    if-eqz v3, :cond_0

    .line 210
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->handleDataSorting(Ljava/util/List;)V

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;->notifyDataChanged()V

    goto :goto_0
.end method

.method protected updateSingleData(Ljava/util/List;Lyd;Z)Z
    .locals 6
    .param p3, "isNotifyChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;TT;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 234
    .local p0, "this":Lcom/alibaba/alimei/sdk/displayer/Displayer;, "Lcom/alibaba/alimei/sdk/displayer/Displayer<TT;>;"
    .local p1, "targetDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "singleData":Lyd;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyd;

    .line 237
    .local v0, "data":Lyd;, "TT;"
    invoke-interface {v0}, Lyd;->getId()J

    move-result-wide v2

    invoke-interface {p2}, Lyd;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 239
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v2, 0x1

    .line 243
    .end local v0    # "data":Lyd;, "TT;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
