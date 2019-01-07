.class public abstract Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
.source "AbsTiledMailDisplayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailTiledDisplayer"


# instance fields
.field protected mCommonMail:Z

.field private mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private final mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

.field private mHasExecuteRefreshedFirst:Z

.field private mHasLoadFinishedFirst:Z

.field private mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

.field mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

.field private mShowDivider:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 3
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;-><init>(Ljava/lang/String;)V

    .line 441
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$3;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    .line 453
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mHasLoadFinishedFirst:Z

    .line 454
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mHasExecuteRefreshedFirst:Z

    .line 455
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$4;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .line 45
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 46
    .local v0, "sdkConfig":Lafy;
    if-eqz v0, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mShowDivider:Z

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->fillFolderMails()V

    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mHasLoadFinishedFirst:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mHasExecuteRefreshedFirst:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->fillListDatas(Ljava/util/List;)V

    return-void
.end method

.method private fillFolderMails()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 321
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 326
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderOldestItem(J)J

    move-result-wide v8

    .line 327
    .local v8, "oldestItemTime":J
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 328
    .local v3, "lid":Ljava/lang/Long;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v5, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 330
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 331
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getRecentReadList()Ljava/util/List;

    move-result-object v7

    .line 332
    .local v7, "recentMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    .end local v7    # "recentMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->fillListDatas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 359
    .end local v3    # "lid":Ljava/lang/Long;
    .end local v5    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v8    # "oldestItemTime":J
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "MailTiledDisplayer"

    invoke-static {v10, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "lid":Ljava/lang/Long;
    .restart local v5    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v8    # "oldestItemTime":J
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getFavoriteList()Ljava/util/List;

    move-result-object v7

    .line 335
    .restart local v7    # "recentMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 361
    .end local v3    # "lid":Ljava/lang/Long;
    .end local v5    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v7    # "recentMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v8    # "oldestItemTime":J
    :catch_1
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v10, "MailTiledDisplayer"

    invoke-static {v10, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "lid":Ljava/lang/Long;
    .restart local v5    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v8    # "oldestItemTime":J
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v10, v10, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 339
    .local v4, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 340
    :cond_5
    iget-object v10, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 342
    iget-object v10, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->loadFromDatabase(J)V

    goto :goto_0

    .line 346
    :cond_6
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 347
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 349
    .local v6, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v6, :cond_7

    .line 352
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v10, v10, v8

    if-ltz v10, :cond_7

    .line 353
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private fillListDatas(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 368
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 369
    sget-object v8, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    :cond_0
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 374
    iget-boolean v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mShowDivider:Z

    if-eqz v8, :cond_4

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 376
    const/4 v5, 0x0

    .line 377
    .local v5, "pos":I
    const/4 v6, 0x0

    .line 379
    .local v6, "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 380
    .local v3, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v10, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v10, v11}, Laiq;->a(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 382
    .local v1, "dayTime":Ljava/lang/Long;
    if-nez v5, :cond_2

    .line 383
    const/4 v0, 0x1

    .line 392
    .local v0, "addDivider":Z
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 394
    if-eqz v0, :cond_1

    .line 395
    iget-wide v10, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v12, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    invoke-static {v10, v11, v12, v13}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v2

    .line 397
    .local v2, "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v2    # "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    move-object v6, v3

    .line 401
    goto :goto_0

    .line 385
    .end local v0    # "addDivider":Z
    :cond_2
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    invoke-static {v10, v11}, Laiq;->a(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 386
    .local v4, "pdayTime":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_3

    .line 387
    const/4 v0, 0x1

    .restart local v0    # "addDivider":Z
    goto :goto_1

    .line 389
    .end local v0    # "addDivider":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "addDivider":Z
    goto :goto_1

    .line 404
    .end local v0    # "addDivider":Z
    .end local v1    # "dayTime":Ljava/lang/Long;
    .end local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v4    # "pdayTime":Ljava/lang/Long;
    .end local v5    # "pos":I
    .end local v6    # "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 405
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_5
    :goto_2
    return-void

    .line 408
    :catch_0
    move-exception v7

    .line 409
    .local v7, "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 410
    const-string/jumbo v8, "MailTiledDisplayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "fillListDatas failed tr = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lzb;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getOldestSerId()Ljava/lang/String;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 279
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 280
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move-object v1, v8

    .line 303
    :cond_1
    :goto_0
    return-object v1

    .line 285
    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v5, v9, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 286
    .local v5, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 287
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 288
    .local v2, "currentMinTime":J
    const/4 v1, 0x0

    .line 289
    .local v1, "currentServerId":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 290
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 291
    .local v6, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 292
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v9, v2, v10

    if-lez v9, :cond_3

    .line 293
    iget-object v1, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 294
    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 299
    .end local v1    # "currentServerId":Ljava/lang/String;
    .end local v2    # "currentMinTime":J
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v6    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v7

    .line 300
    .local v7, "tr":Ljava/lang/Throwable;
    const-string/jumbo v9, "getOldestServerId exception"

    invoke-static {v9, v7}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    .line 303
    goto :goto_0
.end method

.method private getRecentReadList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 521
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 522
    .local v1, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v2, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 524
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 526
    .local v3, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v4, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 527
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    return-object v2
.end method

.method private loadMoreHistoryStarMail(Lxv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 255
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 256
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 257
    .local v0, "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v0, :cond_0

    .line 259
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 263
    .end local v0    # "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    new-instance v2, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Lxv;)V

    .line 276
    return-void
.end method

.method private obtainOldestSerId()Ljava/lang/String;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 184
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_1

    .line 185
    const-string/jumbo v9, "MailTiledDisplayer"

    const-string/jumbo v10, "obtainOldestSerId fail for currentFolder is null"

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 207
    :cond_0
    :goto_0
    return-object v1

    .line 189
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v5, v9, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 190
    .local v5, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 191
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 192
    .local v2, "currentMinTime":J
    const/4 v1, 0x0

    .line 193
    .local v1, "currentServerId":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 194
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 195
    .local v6, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 196
    iget-wide v10, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v9, v2, v10

    if-lez v9, :cond_2

    .line 197
    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 198
    iget-object v1, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    .end local v1    # "currentServerId":Ljava/lang/String;
    .end local v2    # "currentMinTime":J
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v6    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v7

    .line 204
    .local v7, "tr":Ljava/lang/Throwable;
    const-string/jumbo v9, "obtainOldestSerId exception"

    invoke-static {v9, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    .line 207
    goto :goto_0
.end method


# virtual methods
.method public changeAllReadStatus(ZLxv;)V
    .locals 7
    .param p1, "readStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->obtainOldestSerId()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "oldestSerId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-string/jumbo v2, "MailTiledDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "changeAllReadStatus obtain oldestSerId fail for it is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 146
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_2

    .line 147
    const-string/jumbo v2, "MailTiledDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "changeAllReadStatus fail, for currentFolder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz p2, :cond_1

    .line 149
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    const-string/jumbo v2, "MailTiledDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "changeAllReadStatus fail, for accountName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz p2, :cond_1

    .line 162
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 168
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_5

    .line 169
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    move v4, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V

    goto :goto_0

    .line 171
    :cond_5
    const-string/jumbo v2, "MailTiledDisplayer"

    const-string/jumbo v3, "changeAllReadStatus fail, for mailApi is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-eqz p2, :cond_1

    .line 173
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p2, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected executeLoad()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->notifyLoadStarted()V

    .line 309
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V

    .line 310
    return-void
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 556
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 559
    .local v0, "folderId":J
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v7, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 560
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 562
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 563
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 564
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v7, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-eqz v7, :cond_0

    iget-wide v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v7, v8, v0

    if-nez v7, :cond_0

    .line 565
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v6

    .line 569
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 570
    const-string/jumbo v7, "MailTiledDisplayer"

    const-string/jumbo v8, "getAttachmentList error"

    invoke-static {v7, v8, v6}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 574
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 577
    :cond_2
    return-object v4
.end method

.method public getConversationMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFolder()Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method public getFavoriteList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 484
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v6, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 485
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 487
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 489
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v6, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isFavorite:Z

    if-eqz v6, :cond_0

    .line 490
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 495
    .local v2, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v2, :cond_2

    .line 497
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$5;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;)V

    .line 514
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAllLocalFavoriteMails(Lxv;)V

    .line 517
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    :cond_2
    return-object v4
.end method

.method public abstract getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
.end method

.method public getTagList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "targetTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 583
    const/4 v4, 0x0

    .line 622
    :cond_0
    :goto_0
    return-object v4

    .line 586
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 589
    .local v0, "folderId":J
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v9, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 590
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 592
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 593
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 594
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v5, :cond_2

    .line 598
    iget-wide v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v9, v10, v0

    if-nez v9, :cond_2

    .line 602
    iget-object v7, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 603
    .local v7, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 607
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 608
    .local v6, "tag":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 609
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 613
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 614
    .local v8, "tr":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 615
    const-string/jumbo v9, "MailTiledDisplayer"

    const-string/jumbo v10, "getTagList error"

    invoke-static {v9, v10, v8}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .end local v8    # "tr":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 619
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getUnreadList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 536
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    .line 537
    .local v0, "folderId":J
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v6, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 538
    .local v3, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v4, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 540
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 542
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v6, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v6, :cond_0

    iget-wide v6, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 543
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 547
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 550
    :cond_2
    return-object v4
.end method

.method public hasMoreHistoryMail()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 421
    .local v3, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 422
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v1

    .line 425
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isRecentReadFolder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isAllFavoriteFolder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    iget-object v4, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 429
    .local v2, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    const/4 v1, 0x0

    .line 430
    .local v1, "hasMore":Z
    if-eqz v2, :cond_0

    .line 431
    iget-object v4, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    iget v5, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-interface {v4, v6, v7, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->hasMoreHistoryMails(JI)Z

    move-result v1

    goto :goto_0
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 216
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 217
    .local v0, "currentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    :cond_0
    const-string/jumbo v2, "MailTiledDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadMoreHistoryMail fail for currentFolder="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p1, :cond_1

    .line 220
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    invoke-interface {p1, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Lxv;)V

    .line 242
    .local v6, "loadHistoryListener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getOldestSerId()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "oldestSerId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 244
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadHistoryMails(JILjava/lang/String;Lxv;)V

    goto :goto_0

    .line 247
    :cond_3
    const-string/jumbo v2, "MailTiledDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadMoreHistoryMail fail for mailApi is null, accountName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 315
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseCallback(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V

    .line 316
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseLoader()V

    .line 317
    return-void
.end method

.method public refreshMail()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    const-string/jumbo v2, "MailTiledDisplayer"

    const-string/jumbo v3, "refreshMail start"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->canSyncable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    const-string/jumbo v2, "MailTiledDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "current folder can not refresh, currentFolder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 116
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const-string/jumbo v2, "MailTiledDisplayer"

    const-string/jumbo v3, "refreshMail cancel, account is null"

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 126
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncNewMails(JI)V

    goto :goto_0

    .line 129
    :cond_4
    const-string/jumbo v2, "MailTiledDisplayer"

    const-string/jumbo v3, "refresh mail fail for mailApi is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 6
    .param p1, "absBaseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v1, :cond_1

    .line 64
    :cond_0
    const-string/jumbo v1, "MailTiledDisplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not be switch to folder, for folder is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 69
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->refreshMail()V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->notifyLoadSuccess()V

    goto :goto_0

    .line 78
    :cond_2
    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 80
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mHasLoadFinishedFirst:Z

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->refreshMail()V

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mHasExecuteRefreshedFirst:Z

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 86
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/RecentlyMailComparator;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mComparator:Ljava/util/Comparator;

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->executeLoad()V

    goto :goto_0

    .line 88
    :cond_4
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->mComparator:Ljava/util/Comparator;

    goto :goto_1
.end method
