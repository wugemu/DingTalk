.class Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;
.super Ljava/lang/Object;
.source "DefaultMailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

.field final synthetic val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

.field final synthetic val$checkStub:J

.field final synthetic val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;JJLcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iput-wide p2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$checkStub:J

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$start:J

    iput-object p6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iput-object p7, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleCallbackFinished()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 444
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-interface {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;->onLoadFinished()V

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$1100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 450
    .local v0, "c":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    if-eq v0, v3, :cond_1

    .line 451
    invoke-interface {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;->onLoadFinished()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v0    # "c":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;>;"
    :catch_0
    move-exception v2

    .line 455
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "DefaultMailLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleCallbackFinished err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private handlePreloadFinished(Ljava/util/List;)V
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 427
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-interface {v3, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;->onPreloadFinished(Ljava/util/List;)V

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$1100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 433
    .local v0, "c":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$callback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    if-eq v0, v3, :cond_1

    .line 434
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;->onPreloadFinished(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    .end local v0    # "c":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;>;"
    :catch_0
    move-exception v2

    .line 438
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "DefaultMailLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handlePreloadFinished err "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private isInvalid(J)Z
    .locals 3
    .param p1, "checkStub"    # J

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$1000(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v4, :cond_1

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->handleCallbackFinished()V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$checkStub:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->isInvalid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v2

    .line 319
    .local v2, "config":Lafy;
    if-eqz v2, :cond_3

    .line 1298
    iget v8, v2, Lafy;->j:I

    .line 1306
    .local v8, "cachePageSize":I
    iget v0, v2, Lafy;->k:I

    move/from16 v21, v0

    .line 327
    .local v21, "maxSize":I
    :goto_1
    sget-object v4, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v5, "AlmSDK"

    const-string/jumbo v6, "sdk.mail.loadlist"

    const-string/jumbo v7, "queryAllMails"

    invoke-static {v4, v5, v6, v7}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 332
    .local v3, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v6, v6, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryLocalMailsByPage(JLjava/lang/String;ZII)Ljava/util/List;

    move-result-object v23

    .line 333
    .local v23, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    .line 334
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$checkStub:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->isInvalid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->handlePreloadFinished(Ljava/util/List;)V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$start:J

    sub-long v18, v4, v6

    .line 340
    .local v18, "firstPreloadCost":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "1"

    const-string/jumbo v6, "Y"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v4, "DefaultMailLoader"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "first preload cost : "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$start:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "2"

    const-string/jumbo v6, "Y"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "3"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 351
    move v15, v8

    .line 352
    .local v15, "offset":I
    move/from16 v20, v8

    .line 353
    .local v20, "lastLoadSize":I
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v8, :cond_2

    .line 354
    add-int/lit8 v26, v8, 0x64

    .line 355
    .local v26, "nextOffset":I
    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    move/from16 v0, v26

    if-ge v8, v0, :cond_2

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v12, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v13, 0x1

    const/16 v14, 0x64

    move-object v9, v3

    invoke-interface/range {v9 .. v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryLocalMailsByPage(JLjava/lang/String;ZII)Ljava/util/List;

    move-result-object v23

    .line 357
    move/from16 v15, v26

    .line 358
    const/16 v20, 0x64

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->handlePreloadFinished(Ljava/util/List;)V

    .line 362
    const-string/jumbo v4, "DefaultMailLoader"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "second preload cost : "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$start:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v26    # "nextOffset":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "3"

    const-string/jumbo v6, "Y"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$checkStub:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->isInvalid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "4"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 374
    if-eqz v23, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v20

    if-lt v4, v0, :cond_4

    move/from16 v0, v21

    if-le v0, v15, :cond_4

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v12, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v13, 0x1

    sub-int v14, v21, v15

    move-object v9, v3

    invoke-interface/range {v9 .. v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryLocalMailsByPage(JLjava/lang/String;ZII)Ljava/util/List;

    move-result-object v23

    .line 379
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    .line 380
    sget-object v4, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v5, "AlmSDK"

    const-string/jumbo v6, "sdk.mail.loadlist"

    const-string/jumbo v7, "queryAllMails"

    invoke-static {v4, v5, v6, v7}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$checkStub:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->isInvalid(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$902(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;I)I

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->handleCallbackFinished()V

    .line 390
    const-string/jumbo v4, "DefaultMailLoader"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "finish load cost : "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$start:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v5, "4"

    const-string/jumbo v6, "Y"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 395
    const-string/jumbo v27, "select count(*) from Message;"

    .line 396
    .local v27, "sql":Ljava/lang/String;
    const-string/jumbo v4, "EmailProvider.db"

    invoke-static {v4}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-interface {v4, v0, v5}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 397
    .local v16, "countCursor":Landroid/database/Cursor;
    const-wide/16 v24, 0x0

    .line 398
    .local v24, "msgCount":J
    if-eqz v16, :cond_5

    .line 399
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 400
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 401
    const-string/jumbo v4, "DefaultMailLoader"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "message count: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 407
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    move-wide/from16 v0, v24

    iput-wide v0, v4, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->totalSize:J

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;->val$fullFlowModel:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-static {v4}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 411
    new-instance v17, Ljava/util/HashMap;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 412
    .local v17, "dimenSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "mail_count"

    invoke-static/range {v24 .. v25}, Lajb;->a(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v22, Ljava/util/HashMap;

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 414
    .local v22, "measureSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v4, "totalTime"

    move-wide/from16 v0, v18

    long-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v4, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v5, "AlmSDK"

    const-string/jumbo v6, "sdk.mail.loadlist"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v4, v5, v6, v0, v1}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 418
    const-string/jumbo v4, "DefaultMailLoader"

    const-string/jumbo v5, "executeLoading finished!"

    invoke-static {v4, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .end local v3    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v8    # "cachePageSize":I
    .end local v15    # "offset":I
    .end local v16    # "countCursor":Landroid/database/Cursor;
    .end local v17    # "dimenSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "firstPreloadCost":J
    .end local v20    # "lastLoadSize":I
    .end local v21    # "maxSize":I
    .end local v22    # "measureSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v23    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v24    # "msgCount":J
    .end local v27    # "sql":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x64

    .line 324
    .restart local v8    # "cachePageSize":I
    const/16 v21, 0x1f4

    .restart local v21    # "maxSize":I
    goto/16 :goto_1

    .line 377
    .restart local v3    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .restart local v15    # "offset":I
    .restart local v18    # "firstPreloadCost":J
    .restart local v20    # "lastLoadSize":I
    .restart local v23    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_4
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 404
    .restart local v16    # "countCursor":Landroid/database/Cursor;
    .restart local v24    # "msgCount":J
    .restart local v27    # "sql":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "DefaultMailLoader"

    const-string/jumbo v5, "message count 0"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
