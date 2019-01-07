.class public final Lahk;
.super Lyq;
.source "SyncMailsTask.java"


# instance fields
.field final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:J

.field private e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/alibaba/alimei/framework/db/Account;

.field private final m:Lagy;

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private u:Z

.field private final v:Z

.field private w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

.field private x:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

.field private y:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJZ)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncType"    # I
    .param p3, "folderId"    # J
    .param p5, "isPushSync"    # Z

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lyq;-><init>()V

    .line 59
    const/16 v0, 0xc8

    iput v0, p0, Lahk;->b:I

    .line 84
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lahk;->f:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lahk;->g:Ljava/lang/String;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lahk;->i:I

    .line 90
    iput-object v1, p0, Lahk;->k:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lahk;->l:Lcom/alibaba/alimei/framework/db/Account;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lahk;->n:I

    .line 99
    iput-object v1, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahk;->u:Z

    .line 102
    new-instance v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;-><init>()V

    iput-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 106
    iput-boolean p5, p0, Lahk;->v:Z

    .line 107
    iput p2, p0, Lahk;->c:I

    .line 108
    iput-wide p3, p0, Lahk;->d:J

    .line 109
    iput-object p1, p0, Lahk;->a:Ljava/lang/String;

    .line 110
    sget-object v0, Lagy;->a:Lagy;

    iput-object v0, p0, Lahk;->m:Lagy;

    .line 112
    iget-object v0, p0, Lahk;->m:Lagy;

    .line 1043
    iget v0, v0, Lagy;->c:I

    .line 112
    iput v0, p0, Lahk;->p:I

    .line 113
    iget-object v0, p0, Lahk;->m:Lagy;

    .line 1051
    iget v0, v0, Lagy;->d:I

    .line 113
    iput v0, p0, Lahk;->q:I

    .line 114
    iget-object v0, p0, Lahk;->m:Lagy;

    .line 2030
    iget v0, v0, Lagy;->b:I

    .line 114
    iput v0, p0, Lahk;->o:I

    .line 126
    return-void
.end method

.method static synthetic a(Lahk;I)I
    .locals 0
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lahk;->n:I

    return p1
.end method

.method static synthetic a(Lahk;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 55
    iput-object p1, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Lahk;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    return-object v0
.end method

.method static synthetic a(Lahk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lahk;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lahk;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lahk;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method static synthetic a(Lahk;ZJLjava/lang/Throwable;)V
    .locals 2
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3, p4}, Lahk;->a(ZJLjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lahk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 55
    .line 3485
    if-eqz p1, :cond_0

    .line 3486
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "Y"

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 3492
    :goto_0
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 55
    return-void

    .line 3489
    :cond_0
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    move-object/from16 v0, p0

    iget v1, v0, Lahk;->i:I

    invoke-static {v1}, Laja;->e(I)Ljava/lang/Boolean;

    move-result-object v8

    .line 427
    .local v8, "sentStatus":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget v1, v0, Lahk;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lahk;->e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lahk;->j:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lahk;->x:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lahk;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lahk;->i:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lahk;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lahk;->o:I

    move-object/from16 v0, p0

    iget v6, v0, Lahk;->p:I

    move-object/from16 v0, p0

    iget v7, v0, Lahk;->q:I

    move-object/from16 v9, p1

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMoreMails(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 445
    :goto_0
    return-void

    .line 438
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SyncMailsTask startSync filterType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  mFolderServerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lahk;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mFolderServerType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lahk;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentSyncKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lahk;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " windowPageSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lahk;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " supportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lahk;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " summarySize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lahk;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->c(Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p0

    iget-object v9, v0, Lahk;->x:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lahk;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lahk;->i:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lahk;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lahk;->o:I

    move-object/from16 v0, p0

    iget v15, v0, Lahk;->p:I

    move-object/from16 v0, p0

    iget v0, v0, Lahk;->q:I

    move/from16 v16, v0

    move-object/from16 v17, v8

    move-object/from16 v18, p1

    invoke-interface/range {v9 .. v18}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMail(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 479
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "4.5.10"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iput-object p1, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->reservation:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lahk;->w:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private a(ZJLjava/lang/Throwable;)V
    .locals 12
    .param p1, "ret"    # Z
    .param p2, "start"    # J
    .param p4, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p2

    .line 3130
    .local v8, "cost":J
    const-wide/32 v0, 0xea60

    .line 157
    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v10, 0x1

    .line 158
    .local v10, "isTimeout":Z
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    if-nez v10, :cond_2

    if-nez p4, :cond_2

    const/4 v7, 0x1

    .line 159
    .local v7, "isSuccess":Z
    :goto_1
    const-string/jumbo v2, "sdk.mail.fromusers"

    .line 160
    .local v2, "moniterPoint":Ljava/lang/String;
    iget-boolean v0, p0, Lahk;->v:Z

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v2, "sdk.mail.frompushs"

    .line 164
    :cond_0
    if-eqz v7, :cond_3

    .line 165
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_2
    return-void

    .line 157
    .end local v2    # "moniterPoint":Ljava/lang/String;
    .end local v7    # "isSuccess":Z
    .end local v10    # "isTimeout":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 158
    .restart local v10    # "isTimeout":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 167
    .restart local v2    # "moniterPoint":Ljava/lang/String;
    .restart local v7    # "isSuccess":Z
    :cond_3
    const/4 v6, 0x1

    .line 168
    .local v6, "code":I
    const-string/jumbo v5, "timeout"

    .line 169
    .local v5, "errMsg":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 170
    const/4 v6, 0x2

    .line 171
    invoke-static/range {p4 .. p4}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 179
    :cond_4
    :goto_3
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 172
    :cond_5
    if-eqz v10, :cond_6

    .line 173
    const/4 v6, 0x1

    .line 174
    const-string/jumbo v5, "timeout"

    goto :goto_3

    .line 175
    :cond_6
    iget-object v0, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v6

    .line 177
    iget-object v0, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method static synthetic a(Lahk;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;)Z
    .locals 3
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .prologue
    .line 55
    .line 4454
    const/4 v0, 0x4

    iget v1, p0, Lahk;->c:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    iget-object v1, p0, Lahk;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4459
    :cond_0
    iget v0, p0, Lahk;->n:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    .line 4460
    const-string/jumbo v0, "SyncMailsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lahk;->a:Ljava/lang/String;

    invoke-static {v2}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u670d\u52a1\u5668\u7aef\u7684\u8fd4\u56demore\u503c\u6709\u95ee\u9898\uff0c\u8fbe\u5230\u6700\u5927\u7684200"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6761\u6570\u91cf\u540e\uff0c\u8fd8\u8981\u6c42\u7ee7\u7eed\u540c\u6b65!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncMailsTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahk;->a:Ljava/lang/String;

    invoke-static {v1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u670d\u52a1\u5668\u7aef\u7684\u8fd4\u56demore\u503c\u6709\u95ee\u9898\uff0c\u8fbe\u5230\u6700\u5927\u7684200"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6761\u6570\u91cf\u540e\uff0c\u8fd8\u8981\u6c42\u7ee7\u7eed\u540c\u6b65!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->c(Ljava/lang/String;)I

    .line 4475
    :cond_1
    const/4 v0, 0x0

    .line 4472
    :goto_0
    return v0

    .line 4468
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->isMore()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getCount()I

    move-result v0

    iget v1, p0, Lahk;->o:I

    if-lt v0, v1, :cond_1

    .line 4469
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    .line 4470
    iget-object v1, p0, Lahk;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4471
    iput-object v0, p0, Lahk;->f:Ljava/lang/String;

    .line 4472
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lahk;Z)Z
    .locals 1
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahk;->u:Z

    return v0
.end method

.method static synthetic b(Lahk;)I
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget v0, p0, Lahk;->n:I

    return v0
.end method

.method static synthetic b(Lahk;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lahk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lahk;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lahk;)Lcom/alibaba/alimei/framework/db/Account;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->l:Lcom/alibaba/alimei/framework/db/Account;

    return-object v0
.end method

.method static synthetic d(Lahk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lahk;)J
    .locals 2
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-wide v0, p0, Lahk;->d:J

    return-wide v0
.end method

.method static synthetic f(Lahk;)I
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget v0, p0, Lahk;->c:I

    return v0
.end method

.method static synthetic g(Lahk;)Z
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-boolean v0, p0, Lahk;->u:Z

    return v0
.end method

.method static synthetic h(Lahk;)Z
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-boolean v0, p0, Lahk;->v:Z

    return v0
.end method

.method static synthetic i(Lahk;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->y:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    return-object v0
.end method

.method static synthetic j(Lahk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lahk;)I
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget v0, p0, Lahk;->i:I

    return v0
.end method

.method static synthetic l(Lahk;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object v0
.end method

.method static synthetic m(Lahk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lahk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lahk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 55
    iget-object v0, p0, Lahk;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 130
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string/jumbo v0, "SyncMailsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v14, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 137
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2184
    .local v2, "start":J
    :try_start_0
    const-string/jumbo v7, "cmail_sync_from_user"

    .line 2185
    iget-boolean v8, p0, Lahk;->v:Z

    if-eqz v8, :cond_0

    .line 2186
    sget-object v7, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v8, "AlmSDK"

    const-string/jumbo v9, "sdk.mail.frompushs"

    invoke-static {v7, v8, v9}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string/jumbo v7, "cmail_sync_from_push"

    .line 2190
    :cond_0
    invoke-direct {p0, v7}, Lahk;->a(Ljava/lang/String;)V

    .line 2193
    iget v7, p0, Lahk;->c:I

    packed-switch v7, :pswitch_data_0

    .line 2203
    const-string/jumbo v7, "basic_SyncMail"

    .line 2206
    :goto_0
    new-instance v8, Lyc;

    iget-object v9, p0, Lahk;->a:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2207
    iget-wide v10, p0, Lahk;->d:J

    iput-wide v10, v8, Lyc;->e:J

    .line 2209
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v9

    .line 2211
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2214
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v7

    iget-object v10, p0, Lahk;->a:Ljava/lang/String;

    invoke-interface {v7, v10}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getAccountByName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v7

    iput-object v7, p0, Lahk;->l:Lcom/alibaba/alimei/framework/db/Account;

    .line 2215
    iget-object v7, p0, Lahk;->l:Lcom/alibaba/alimei/framework/db/Account;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lahk;->l:Lcom/alibaba/alimei/framework/db/Account;

    iget-wide v10, v7, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_3

    .line 2216
    :cond_1
    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v5}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    iput-object v5, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 2217
    const/4 v5, 0x2

    iput v5, v8, Lyc;->c:I

    .line 2218
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2219
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Account do not exist for accountName---->>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lahk;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2415
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 145
    :goto_2
    invoke-direct {p0, v1, v2, v3, v0}, Lahk;->a(ZJLjava/lang/Throwable;)V

    .line 147
    return v1

    .line 2195
    :pswitch_0
    :try_start_1
    const-string/jumbo v7, "basic_SyncHistoryMail"

    goto :goto_0

    .line 2198
    :pswitch_1
    const-string/jumbo v7, "basic_SyncNewMail"

    goto :goto_0

    .line 2224
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v7

    iget-wide v10, p0, Lahk;->d:J

    invoke-interface {v7, v10, v11}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v7

    iput-object v7, p0, Lahk;->e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 2229
    iget-object v7, p0, Lahk;->e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    if-nez v7, :cond_4

    .line 2230
    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v5}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    iput-object v5, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 2231
    const/4 v5, 0x2

    iput v5, v8, Lyc;->c:I

    .line 2232
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2233
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Mailbox do not exist for folderId---->>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lahk;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->a(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    move-exception v4

    .line 141
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "SyncMailsTask"

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    move-object v0, v4

    goto :goto_2

    .line 2238
    .end local v4    # "tr":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    iget v7, p0, Lahk;->c:I

    if-ne v7, v6, :cond_9

    const-string/jumbo v7, "0"

    :goto_3
    iput-object v7, p0, Lahk;->f:Ljava/lang/String;

    .line 2239
    iget-object v7, p0, Lahk;->e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v7, p0, Lahk;->h:Ljava/lang/String;

    .line 2243
    iget-object v7, p0, Lahk;->e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget v7, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v7}, Laja;->d(I)I

    move-result v7

    iput v7, p0, Lahk;->i:I

    .line 2245
    iget-object v7, p0, Lahk;->a:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v7

    iput-object v7, p0, Lahk;->x:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    .line 2246
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v7

    iput-object v7, p0, Lahk;->y:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 2249
    iget-object v7, p0, Lahk;->f:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lahk;->f:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 2250
    :cond_5
    const-string/jumbo v7, "0"

    iput-object v7, p0, Lahk;->f:Ljava/lang/String;

    .line 2253
    :cond_6
    iget-object v7, p0, Lahk;->f:Ljava/lang/String;

    iput-object v7, p0, Lahk;->g:Ljava/lang/String;

    .line 2256
    iget v7, p0, Lahk;->c:I

    if-eq v7, v14, :cond_7

    iget v7, p0, Lahk;->c:I

    if-eq v7, v6, :cond_7

    const-string/jumbo v7, "0"

    iget-object v10, p0, Lahk;->f:Ljava/lang/String;

    .line 2257
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v5, v6

    .line 2258
    :cond_8
    const/4 v6, 0x1

    iput-boolean v6, p0, Lahk;->u:Z

    .line 2261
    iget v6, p0, Lahk;->c:I

    if-ne v6, v14, :cond_a

    .line 2262
    const/4 v6, 0x0

    iput-boolean v6, p0, Lahk;->u:Z

    .line 2268
    :goto_4
    const-string/jumbo v6, "SyncMailsTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mStartSyncKey --->>"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lahk;->g:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", mCurrentSyncType: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lahk;->c:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ", mFolderServerType: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lahk;->i:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    new-instance v6, Lahk$1;

    invoke-direct {v6, p0, v5}, Lahk$1;-><init>(Lahk;Z)V

    .line 2394
    invoke-direct {p0, v6}, Lahk;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 2397
    iget v5, p0, Lahk;->n:I

    if-gtz v5, :cond_b

    .line 2401
    iget-object v5, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v5, :cond_b

    .line 2402
    const/4 v5, 0x2

    iput v5, v8, Lyc;->c:I

    .line 2403
    iget-object v5, p0, Lahk;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v5, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 2404
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2411
    :goto_5
    iget-boolean v5, p0, Lahk;->v:Z

    if-eqz v5, :cond_2

    .line 2412
    sget-object v5, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v6, "AlmSDK"

    const-string/jumbo v7, "sdk.mail.frompushs"

    invoke-static {v5, v6, v7}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2238
    :cond_9
    iget-object v7, p0, Lahk;->e:Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 2264
    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lahk;->u:Z

    goto :goto_4

    .line 2406
    :cond_b
    const/4 v5, 0x1

    iput v5, v8, Lyc;->c:I

    .line 2407
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 2193
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
