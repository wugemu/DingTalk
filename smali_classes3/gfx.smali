.class public final Lgfx;
.super Ljava/lang/Object;
.source "SpaceRecentFetcher.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lgfy;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Z

.field public g:Lcom/alibaba/doraemon/threadpool/Thread;

.field h:Z

.field public i:Z

.field final j:Ljava/lang/String;

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field private m:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;JLgfy;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "userId"    # J
    .param p5, "callback"    # Lgfy;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lgfx;->c:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lgfx;->d:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lgfx;->e:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lgfx;->f:Z

    .line 69
    iput-object v0, p0, Lgfx;->g:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 70
    iput-boolean v2, p0, Lgfx;->h:Z

    .line 71
    iput-boolean v2, p0, Lgfx;->i:Z

    .line 84
    iput-object p1, p0, Lgfx;->m:Landroid/app/Activity;

    .line 85
    iput-object p2, p0, Lgfx;->a:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lgfx;->b:Lgfy;

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "dp.space.recent.index."

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "idxBegin"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgfx;->j:Ljava/lang/String;

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "dp.space.recent.index."

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "idxEnd"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgfx;->k:Ljava/lang/String;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "dp.space.recent.index."

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "idxhasMore"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgfx;->l:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 392
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "refresh recent file indexBegin---->>>: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgfx;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", isInRefreshing: "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 2408
    iget-boolean v2, p0, Lgfx;->h:Z

    .line 393
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 392
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 3408
    iget-boolean v0, p0, Lgfx;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    if-eqz v0, :cond_0

    .line 401
    :goto_0
    monitor-exit p0

    return-void

    .line 399
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lgfx;->h:Z

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgfx;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 11
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 145
    move v3, p1

    .line 149
    .local v3, "loadType":I
    packed-switch p1, :pswitch_data_0

    .line 169
    const-string/jumbo v6, "TYPE_FORCE_SYNC"

    .line 170
    .local v6, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 171
    .local v4, "offset":Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, "direction":I
    :goto_0
    move v0, v3

    .line 176
    .local v0, "dataType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "---->offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", direction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", dataType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lzb;->f(Ljava/lang/String;)I

    .line 178
    const-class v7, Lcom/alibaba/dingtalk/cspace/idl/service/DpRecentOperationService;

    invoke-static {v7}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/cspace/idl/service/DpRecentOperationService;

    .line 179
    .local v5, "operationService":Lcom/alibaba/dingtalk/cspace/idl/service/DpRecentOperationService;
    const-string/jumbo v7, "EVENTBUTLER"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lgfx$2;

    invoke-direct {v8, p0, p1, v0}, Lgfx$2;-><init>(Lgfx;II)V

    const-class v9, Liyv;

    iget-object v10, p0, Lgfx;->m:Landroid/app/Activity;

    invoke-interface {v7, v8, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liyv;

    .line 257
    .local v2, "handler":Liyv;, "Liyv<Lgix;>;"
    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v4, v7, v8, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/DpRecentOperationService;->listRecentOperation(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 258
    return-void

    .line 151
    .end local v0    # "dataType":I
    .end local v1    # "direction":I
    .end local v2    # "handler":Liyv;, "Liyv<Lgix;>;"
    .end local v4    # "offset":Ljava/lang/String;
    .end local v5    # "operationService":Lcom/alibaba/dingtalk/cspace/idl/service/DpRecentOperationService;
    .end local v6    # "tag":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lgfx;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    const-string/jumbo v6, "TYPE_REFRESH TO FOCESYNC"

    .line 153
    .restart local v6    # "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 154
    .restart local v4    # "offset":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .restart local v1    # "direction":I
    const/4 v3, 0x0

    goto :goto_0

    .line 157
    .end local v1    # "direction":I
    .end local v4    # "offset":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "TYPE_REFRESH"

    .line 158
    .restart local v6    # "tag":Ljava/lang/String;
    iget-object v4, p0, Lgfx;->d:Ljava/lang/String;

    .line 159
    .restart local v4    # "offset":Ljava/lang/String;
    const/4 v1, 0x1

    .line 161
    .restart local v1    # "direction":I
    goto :goto_0

    .line 163
    .end local v1    # "direction":I
    .end local v4    # "offset":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v6, "TYPE_LOADMORE"

    .line 164
    .restart local v6    # "tag":Ljava/lang/String;
    iget-object v4, p0, Lgfx;->e:Ljava/lang/String;

    .line 165
    .restart local v4    # "offset":Ljava/lang/String;
    const/4 v1, 0x0

    .line 166
    .restart local v1    # "direction":I
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized a(ILgix;)V
    .locals 30
    .param p1, "dataType"    # I
    .param p2, "model"    # Lgix;

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->d:Ljava/lang/Long;

    if-nez v5, :cond_0

    const-wide/16 v14, 0x0

    .line 268
    .local v14, "indexDelete":J
    :goto_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->e:Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->e:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 272
    .local v12, "hasMoreValue":Z
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 291
    const-wide/16 v14, -0x1

    .line 292
    move-object/from16 v0, p2

    iget-object v0, v0, Lgix;->b:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 293
    .local v23, "tempIndexBegin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lgix;->c:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 296
    .local v24, "tempIndexEnd":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lgfx;->a:Ljava/lang/String;

    invoke-static {v5}, Lth;->c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 297
    .local v4, "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    if-nez v4, :cond_3

    .line 385
    :goto_3
    monitor-exit p0

    return-void

    .line 267
    .end local v4    # "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    .end local v12    # "hasMoreValue":Z
    .end local v14    # "indexDelete":J
    .end local v23    # "tempIndexBegin":Ljava/lang/String;
    .end local v24    # "tempIndexEnd":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->d:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_0

    .line 268
    .restart local v14    # "indexDelete":J
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 274
    .restart local v12    # "hasMoreValue":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgfx;->d:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 275
    .restart local v23    # "tempIndexBegin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lgix;->c:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 276
    .restart local v24    # "tempIndexEnd":Ljava/lang/String;
    goto :goto_2

    .line 278
    .end local v23    # "tempIndexBegin":Ljava/lang/String;
    .end local v24    # "tempIndexEnd":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lgix;->b:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 280
    .restart local v23    # "tempIndexBegin":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    move-object/from16 v0, p2

    iget-object v0, v0, Lgix;->c:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 282
    .restart local v24    # "tempIndexEnd":Ljava/lang/String;
    const-wide/16 v14, -0x1

    goto :goto_2

    .line 284
    .end local v24    # "tempIndexEnd":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgfx;->e:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 286
    .restart local v24    # "tempIndexEnd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lgfx;->f:Z

    .line 288
    goto :goto_2

    .line 300
    .restart local v4    # "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    :cond_3
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->f:Ljava/util/List;

    if-nez v5, :cond_6

    const/4 v10, 0x0

    .line 303
    .local v10, "dataSize":I
    :goto_4
    invoke-interface {v4, v14, v15}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->deleteRecentOperations(J)I

    .line 306
    if-lez v10, :cond_1b

    .line 307
    const/16 v22, 0x0

    .line 311
    .local v22, "recentOperationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_4
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgjc;

    .line 312
    .local v13, "operationModel":Lgjc;
    if-nez v22, :cond_5

    .line 313
    new-instance v22, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .end local v22    # "recentOperationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    invoke-direct/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;-><init>()V

    .line 315
    .restart local v22    # "recentOperationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_5
    iget-object v5, v13, Lgjc;->a:Ljava/lang/Long;

    if-nez v5, :cond_7

    const-wide/16 v26, -0x1

    :goto_6
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->categoryId:J

    .line 317
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->categoryId:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v5, v26, v28

    if-nez v5, :cond_8

    .line 318
    const-string/jumbo v5, "Get operation and get a invalid categoryId"

    invoke-static {v5}, Lzb;->e(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 267
    .end local v4    # "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    .end local v10    # "dataSize":I
    .end local v12    # "hasMoreValue":Z
    .end local v13    # "operationModel":Lgjc;
    .end local v14    # "indexDelete":J
    .end local v22    # "recentOperationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .end local v23    # "tempIndexBegin":Ljava/lang/String;
    .end local v24    # "tempIndexEnd":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 300
    .restart local v4    # "operationAPI":Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    .restart local v12    # "hasMoreValue":Z
    .restart local v14    # "indexDelete":J
    .restart local v23    # "tempIndexBegin":Ljava/lang/String;
    .restart local v24    # "tempIndexEnd":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, p2

    iget-object v5, v0, Lgix;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_4

    .line 315
    .restart local v10    # "dataSize":I
    .restart local v13    # "operationModel":Lgjc;
    .restart local v22    # "recentOperationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_7
    iget-object v5, v13, Lgjc;->a:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto :goto_6

    .line 322
    :cond_8
    iget-object v5, v13, Lgjc;->g:Ljava/lang/Long;

    if-nez v5, :cond_c

    const-wide/16 v16, 0x0

    .line 323
    .local v16, "orgId":J
    :goto_7
    const-wide/16 v8, 0x0

    .line 324
    .local v8, "operationTime":J
    const/4 v7, 0x0

    .line 327
    .local v7, "fileCount":I
    iget-object v5, v13, Lgjc;->h:Ljava/util/List;

    if-eqz v5, :cond_16

    .line 328
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v19, "recentDentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    iget-object v5, v13, Lgjc;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgiw;

    .line 330
    .local v11, "entryModel":Lgiw;
    new-instance v18, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;-><init>()V

    .line 331
    .local v18, "recentDentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    iget-object v5, v11, Lgiw;->k:Ljava/lang/Long;

    if-nez v5, :cond_d

    const-wide/16 v26, 0x0

    :goto_9
    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverOpId:J

    .line 332
    iget-object v5, v11, Lgiw;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    .line 333
    iget-object v5, v11, Lgiw;->c:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    .line 334
    iget-object v5, v11, Lgiw;->d:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 335
    iget-object v5, v11, Lgiw;->e:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    .line 336
    iget-object v5, v11, Lgiw;->f:Ljava/lang/Integer;

    if-nez v5, :cond_e

    const/4 v5, 0x0

    :goto_a
    move-object/from16 v0, v18

    iput v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->fileType:I

    .line 337
    iget-object v5, v11, Lgiw;->g:Ljava/lang/Long;

    if-nez v5, :cond_f

    const-wide/16 v26, 0x0

    :goto_b
    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->length:J

    .line 338
    iget-object v5, v11, Lgiw;->h:Ljava/lang/Long;

    if-nez v5, :cond_10

    const-wide/16 v26, 0x0

    :goto_c
    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->createTime:J

    .line 339
    iget-object v5, v11, Lgiw;->i:Ljava/lang/Long;

    if-nez v5, :cond_11

    const-wide/16 v26, 0x0

    :goto_d
    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->modifyTime:J

    .line 340
    iget-object v5, v11, Lgiw;->j:Ljava/lang/Long;

    if-nez v5, :cond_12

    const-wide/16 v26, 0x0

    :goto_e
    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->operateTime:J

    .line 341
    iget-object v5, v11, Lgiw;->l:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    .line 342
    move-wide/from16 v0, v16

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->orgId:J

    .line 343
    iget-object v5, v11, Lgiw;->p:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v5

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v5, v0, :cond_13

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->isEncrypt:Z

    .line 344
    iget-object v5, v11, Lgiw;->q:Lghf;

    if-eqz v5, :cond_a

    .line 345
    iget-object v5, v11, Lgiw;->q:Lghf;

    iget-object v5, v5, Lghf;->a:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->appId:Ljava/lang/String;

    .line 346
    iget-object v5, v11, Lgiw;->q:Lghf;

    iget-object v5, v5, Lghf;->b:Ljava/lang/String;

    invoke-static {v5}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->cryptOrgId:J

    .line 347
    iget-object v5, v11, Lgiw;->q:Lghf;

    iget-object v5, v5, Lghf;->c:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->priority:Ljava/lang/String;

    .line 349
    :cond_a
    iget-object v5, v11, Lgiw;->s:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v5

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v5, v0, :cond_14

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->isESafeNetEncrypt:Z

    .line 351
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-wide/16 v26, 0x0

    cmp-long v5, v8, v26

    if-lez v5, :cond_b

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->operateTime:J

    move-wide/from16 v26, v0

    cmp-long v5, v26, v8

    if-lez v5, :cond_9

    .line 356
    :cond_b
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->operateTime:J

    goto/16 :goto_8

    .line 322
    .end local v7    # "fileCount":I
    .end local v8    # "operationTime":J
    .end local v11    # "entryModel":Lgiw;
    .end local v16    # "orgId":J
    .end local v18    # "recentDentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .end local v19    # "recentDentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    :cond_c
    iget-object v5, v13, Lgjc;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto/16 :goto_7

    .line 331
    .restart local v7    # "fileCount":I
    .restart local v8    # "operationTime":J
    .restart local v11    # "entryModel":Lgiw;
    .restart local v16    # "orgId":J
    .restart local v18    # "recentDentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .restart local v19    # "recentDentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    :cond_d
    iget-object v5, v11, Lgiw;->k:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_9

    .line 336
    :cond_e
    iget-object v5, v11, Lgiw;->f:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_a

    .line 337
    :cond_f
    iget-object v5, v11, Lgiw;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_b

    .line 338
    :cond_10
    iget-object v5, v11, Lgiw;->h:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_c

    .line 339
    :cond_11
    iget-object v5, v11, Lgiw;->i:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_d

    .line 340
    :cond_12
    iget-object v5, v11, Lgiw;->j:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_e

    .line 343
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 349
    :cond_14
    const/4 v5, 0x0

    goto :goto_10

    .line 360
    .end local v11    # "entryModel":Lgiw;
    .end local v18    # "recentDentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    :cond_15
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->categoryId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    invoke-interface {v4, v0, v1, v2}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->batchInsertRecentOperationFile(JLjava/util/List;)I

    move-result v7

    .line 363
    .end local v19    # "recentDentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentDentryModel;>;"
    :cond_16
    if-eqz v7, :cond_4

    .line 366
    iget-object v5, v13, Lgjc;->b:Ljava/lang/Long;

    if-nez v5, :cond_17

    const-wide/16 v26, 0x0

    :goto_11
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    .line 367
    iget-object v5, v13, Lgjc;->c:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupName:Ljava/lang/String;

    .line 368
    iget-object v5, v13, Lgjc;->d:Ljava/lang/Long;

    if-nez v5, :cond_18

    const-wide/16 v26, 0x0

    :goto_12
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorId:J

    .line 369
    iget-object v5, v13, Lgjc;->e:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorName:Ljava/lang/String;

    .line 370
    iget-object v5, v13, Lgjc;->f:Ljava/lang/Integer;

    if-nez v5, :cond_19

    const/4 v5, 0x0

    :goto_13
    move-object/from16 v0, v22

    iput v5, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    .line 371
    move-object/from16 v0, v22

    iput-wide v8, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationTime:J

    .line 372
    move-object/from16 v0, v22

    iput v7, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    .line 373
    iget-object v5, v13, Lgjc;->g:Ljava/lang/Long;

    if-nez v5, :cond_1a

    .end local v16    # "orgId":J
    :goto_14
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->orgId:J

    .line 374
    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->insertOrIgnoreRecentOperation(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)J

    move-result-wide v20

    .line 375
    .local v20, "recentId":J
    const-wide/16 v26, -0x1

    cmp-long v5, v20, v26

    if-nez v5, :cond_4

    .line 377
    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->categoryId:J

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->updateRecentOperation(JIJ)V

    goto/16 :goto_5

    .line 366
    .end local v20    # "recentId":J
    .restart local v16    # "orgId":J
    :cond_17
    iget-object v5, v13, Lgjc;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto :goto_11

    .line 368
    :cond_18
    iget-object v5, v13, Lgjc;->d:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto :goto_12

    .line 370
    :cond_19
    iget-object v5, v13, Lgjc;->f:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_13

    .line 373
    :cond_1a
    iget-object v5, v13, Lgjc;->g:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_14

    .line 384
    .end local v7    # "fileCount":I
    .end local v8    # "operationTime":J
    .end local v13    # "operationModel":Lgjc;
    .end local v16    # "orgId":J
    .end local v22    # "recentOperationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    :cond_1b
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1450
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lgfx;->d:Ljava/lang/String;

    .line 1451
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lgfx;->e:Ljava/lang/String;

    .line 1452
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lgfx;->f:Z

    .line 1453
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lgfx;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgfx;->d:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lgfx;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgfx;->e:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lgfx;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgfx;->f:Z

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
