.class public final Lahl;
.super Lyq;
.source "SyncMultipleMailsTask.java"


# instance fields
.field private A:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

.field private B:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

.field private final a:I

.field private b:[I

.field private final c:[J

.field private d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[I

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/Boolean;

.field private k:Lcom/alibaba/alimei/framework/db/Account;

.field private final l:Ljava/lang/String;

.field private final m:Lagy;

.field private n:[I

.field private final o:I

.field private final p:I

.field private final q:I

.field private t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private u:[Z

.field private final v:Z

.field private w:I

.field private x:I

.field private y:[Ljava/lang/String;

.field private z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[JZ)V
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "syncType"    # I
    .param p3, "folderId"    # [J
    .param p4, "isPushSync"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Lyq;-><init>()V

    .line 50
    const/16 v1, 0xc8

    iput v1, p0, Lahl;->a:I

    .line 81
    iput-object v3, p0, Lahl;->j:[Ljava/lang/Boolean;

    .line 82
    iput-object v3, p0, Lahl;->k:Lcom/alibaba/alimei/framework/db/Account;

    .line 90
    iput-object v3, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 95
    iput v4, p0, Lahl;->x:I

    .line 98
    new-instance v1, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;-><init>()V

    iput-object v1, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 102
    iput-boolean p4, p0, Lahl;->v:Z

    .line 104
    iput-object p3, p0, Lahl;->c:[J

    .line 105
    iput-object p1, p0, Lahl;->l:Ljava/lang/String;

    .line 106
    sget-object v1, Lagy;->a:Lagy;

    iput-object v1, p0, Lahl;->m:Lagy;

    .line 108
    iget-object v1, p0, Lahl;->m:Lagy;

    .line 1043
    iget v1, v1, Lagy;->c:I

    .line 108
    iput v1, p0, Lahl;->p:I

    .line 109
    iget-object v1, p0, Lahl;->m:Lagy;

    .line 1051
    iget v1, v1, Lagy;->d:I

    .line 109
    iput v1, p0, Lahl;->q:I

    .line 110
    iget-object v1, p0, Lahl;->m:Lagy;

    .line 2030
    iget v1, v1, Lagy;->b:I

    .line 110
    iput v1, p0, Lahl;->o:I

    .line 112
    array-length v1, p3

    iput v1, p0, Lahl;->w:I

    .line 113
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    iput-object v1, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 114
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lahl;->e:[Ljava/lang/String;

    .line 115
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lahl;->f:[Ljava/lang/String;

    .line 116
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [I

    iput-object v1, p0, Lahl;->n:[I

    .line 117
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [I

    iput-object v1, p0, Lahl;->h:[I

    .line 118
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lahl;->u:[Z

    .line 119
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lahl;->i:[Ljava/lang/String;

    .line 120
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [I

    iput-object v1, p0, Lahl;->b:[I

    .line 121
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lahl;->g:[Ljava/lang/String;

    .line 122
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, Lahl;->j:[Ljava/lang/Boolean;

    .line 123
    iput p2, p0, Lahl;->x:I

    .line 124
    iget v1, p0, Lahl;->w:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lahl;->y:[Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lahl;->w:I

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lahl;->e:[Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v0

    .line 127
    iget-object v1, p0, Lahl;->f:[Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v0

    .line 128
    iget-object v1, p0, Lahl;->n:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 129
    iget-object v1, p0, Lahl;->h:[I

    aput v4, v1, v0

    .line 130
    iget-object v1, p0, Lahl;->u:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 131
    iget-object v1, p0, Lahl;->i:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 132
    iget-object v1, p0, Lahl;->b:[I

    aput p2, v1, v0

    .line 133
    iget-object v1, p0, Lahl;->y:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic a(Lahl;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lahl;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 46
    iput-object p1, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Lahl;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    return-object v0
.end method

.method static synthetic a(Lahl;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lahl;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lahl;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    return-void
.end method

.method static synthetic a(Lahl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lahl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lahl;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lahl;ZJLjava/lang/Throwable;)V
    .locals 2
    .param p0, "x0"    # Lahl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3, p4}, Lahl;->a(ZJLjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lahl;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lahl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 46
    .line 3518
    if-eqz p1, :cond_0

    .line 3519
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "Y"

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->endSubFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalSuccessModel()Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    .line 3525
    :goto_0
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/FullFlowUtils;->startStatistics(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiUnifyStatisticsModel;)V

    .line 46
    return-void

    .line 3522
    :cond_0
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->generalFailedModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<[",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lahl;->b:[I

    aget v0, v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 437
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget v0, p0, Lahl;->w:I

    if-ge v11, v0, :cond_0

    .line 438
    iget-object v0, p0, Lahl;->i:[Ljava/lang/String;

    iget-object v1, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    aget-object v1, v1, v11

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mMessageOldesetServerId:Ljava/lang/String;

    aput-object v1, v0, v11

    .line 437
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lahl;->A:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    iget-object v1, p0, Lahl;->g:[Ljava/lang/String;

    iget-object v2, p0, Lahl;->h:[I

    iget-object v3, p0, Lahl;->i:[Ljava/lang/String;

    iget v4, p0, Lahl;->o:I

    iget v5, p0, Lahl;->p:I

    iget v6, p0, Lahl;->q:I

    iget-object v7, p0, Lahl;->j:[Ljava/lang/Boolean;

    move-object v8, p1

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMultipleMoreMails([Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 472
    .end local v11    # "i":I
    :goto_1
    return-void

    .line 449
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "SyncMultipleMailsTask, filterType--->> "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    const-string/jumbo v0, " accountName:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lahl;->l:Ljava/lang/String;

    invoke-static {v2}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v0, p0, Lahl;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lahl;->e:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lahl;->g:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lahl;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_4

    .line 453
    iget-object v0, p0, Lahl;->i:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v12, v1

    .line 454
    .local v12, "length":I
    :goto_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    iget-object v0, p0, Lahl;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_4

    .line 455
    const-string/jumbo v0, ", folderServerId:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lahl;->g:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v0, ", mFolderServerType:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lahl;->h:[I

    aget v2, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v0, ", syncKey:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    if-ge v11, v12, :cond_2

    .line 459
    const-string/jumbo v0, " newOldestItemId: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lahl;->i:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 453
    .end local v11    # "i":I
    .end local v12    # "length":I
    :cond_3
    iget-object v0, p0, Lahl;->i:[Ljava/lang/String;

    array-length v12, v0

    goto :goto_2

    .line 463
    :cond_4
    const-string/jumbo v0, ", windowPageSize:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lahl;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string/jumbo v0, ", supportType:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lahl;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    const-string/jumbo v0, ", summarySize:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lahl;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 468
    .local v10, "bizMsg":Ljava/lang/String;
    invoke-static {v10}, Lyx;->c(Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lahl;->A:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    iget-object v2, p0, Lahl;->g:[Ljava/lang/String;

    iget-object v3, p0, Lahl;->h:[I

    iget-object v4, p0, Lahl;->e:[Ljava/lang/String;

    iget v5, p0, Lahl;->o:I

    iget v6, p0, Lahl;->p:I

    iget v7, p0, Lahl;->q:I

    iget-object v8, p0, Lahl;->j:[Ljava/lang/Boolean;

    move-object v9, p1

    invoke-interface/range {v0 .. v9}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMultipleMail(I[Ljava/lang/String;[I[Ljava/lang/String;III[Ljava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "bizType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 512
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "4.5.10"

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    iput-object p1, v0, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->reservation:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lahl;->z:Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private a(ZJLjava/lang/Throwable;)V
    .locals 12
    .param p1, "ret"    # Z
    .param p2, "start"    # J
    .param p4, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p2

    .line 3139
    .local v8, "cost":J
    const-wide/32 v0, 0xea60

    .line 165
    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v10, 0x1

    .line 166
    .local v10, "isTimeout":Z
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    if-nez v10, :cond_2

    if-nez p4, :cond_2

    const/4 v7, 0x1

    .line 167
    .local v7, "isSuccess":Z
    :goto_1
    const-string/jumbo v2, "sdk.mail.fromusers"

    .line 168
    .local v2, "moniterPoint":Ljava/lang/String;
    iget-boolean v0, p0, Lahl;->v:Z

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v2, "sdk.mail.frompushs"

    .line 172
    :cond_0
    if-eqz v7, :cond_3

    .line 173
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_2
    return-void

    .line 165
    .end local v2    # "moniterPoint":Ljava/lang/String;
    .end local v7    # "isSuccess":Z
    .end local v10    # "isTimeout":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 166
    .restart local v10    # "isTimeout":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 175
    .restart local v2    # "moniterPoint":Ljava/lang/String;
    .restart local v7    # "isSuccess":Z
    :cond_3
    const/4 v6, 0x1

    .line 176
    .local v6, "code":I
    const-string/jumbo v5, "timeout"

    .line 177
    .local v5, "errMsg":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 178
    const/4 v6, 0x2

    .line 179
    invoke-static/range {p4 .. p4}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_4
    :goto_3
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_5
    if-eqz v10, :cond_6

    .line 181
    const/4 v6, 0x1

    .line 182
    const-string/jumbo v5, "timeout"

    goto :goto_3

    .line 183
    :cond_6
    iget-object v0, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v6

    .line 185
    iget-object v0, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method static synthetic a(Lahl;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;I)Z
    .locals 3
    .param p0, "x0"    # Lahl;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .param p2, "x2"    # I

    .prologue
    .line 46
    .line 3481
    const/4 v0, 0x4

    iget-object v1, p0, Lahl;->b:[I

    aget v1, v1, p2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    iget-object v1, p0, Lahl;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3486
    :cond_0
    iget-object v0, p0, Lahl;->n:[I

    aget v0, v0, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    .line 3487
    const-string/jumbo v0, "SyncMultipleMailsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lahl;->l:Ljava/lang/String;

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

    .line 3489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncMultipleMailsTask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lahl;->l:Ljava/lang/String;

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

    .line 3508
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3499
    :goto_1
    return v0

    .line 3495
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->isMore()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getCount()I

    move-result v0

    iget v1, p0, Lahl;->o:I

    if-lt v0, v1, :cond_4

    .line 3496
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    .line 3497
    iget-object v1, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3498
    iget-object v1, p0, Lahl;->e:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 3499
    const/4 v0, 0x1

    goto :goto_1

    .line 3503
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    .line 3504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3505
    iget-object v1, p0, Lahl;->e:[Ljava/lang/String;

    aput-object v0, v1, p2

    goto :goto_0
.end method

.method static synthetic b(Lahl;)I
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget v0, p0, Lahl;->w:I

    return v0
.end method

.method static synthetic c(Lahl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->y:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lahl;)[I
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->b:[I

    return-object v0
.end method

.method static synthetic e(Lahl;)[I
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->n:[I

    return-object v0
.end method

.method static synthetic f(Lahl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lahl;)[I
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->h:[I

    return-object v0
.end method

.method static synthetic h(Lahl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lahl;)[Z
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->u:[Z

    return-object v0
.end method

.method static synthetic j(Lahl;)Lcom/alibaba/alimei/framework/db/Account;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->k:Lcom/alibaba/alimei/framework/db/Account;

    return-object v0
.end method

.method static synthetic k(Lahl;)[J
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->c:[J

    return-object v0
.end method

.method static synthetic l(Lahl;)Z
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-boolean v0, p0, Lahl;->v:Z

    return v0
.end method

.method static synthetic m(Lahl;)Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->B:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    return-object v0
.end method

.method static synthetic n(Lahl;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object v0
.end method

.method static synthetic o(Lahl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lahl;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahl;

    .prologue
    .line 46
    iget-object v0, p0, Lahl;->i:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 139
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string/jumbo v0, "SyncMultipleMailsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 145
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2192
    .local v2, "start":J
    :try_start_0
    const-string/jumbo v5, "SyncMultipleMailsTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "execute --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lahl;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget v5, p0, Lahl;->x:I

    packed-switch v5, :pswitch_data_0

    .line 2205
    const-string/jumbo v5, "basic_SyncMail"

    move-object v6, v5

    .line 2209
    :goto_0
    const-string/jumbo v5, "cmail_sync_from_user"

    .line 2210
    iget-boolean v7, p0, Lahl;->v:Z

    if-eqz v7, :cond_0

    .line 2211
    const-string/jumbo v5, "cmail_sync_from_push"

    .line 2214
    :cond_0
    invoke-direct {p0, v5}, Lahl;->a(Ljava/lang/String;)V

    .line 2216
    new-instance v8, Lyc;

    iget-object v5, p0, Lahl;->l:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v8, v6, v5, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2217
    iget-object v5, p0, Lahl;->c:[J

    iput-object v5, v8, Lyc;->g:Ljava/lang/Object;

    .line 2219
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v9

    .line 2221
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2224
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v5

    iget-object v6, p0, Lahl;->l:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getAccountByName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v5

    iput-object v5, p0, Lahl;->k:Lcom/alibaba/alimei/framework/db/Account;

    .line 2225
    iget-object v5, p0, Lahl;->k:Lcom/alibaba/alimei/framework/db/Account;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lahl;->k:Lcom/alibaba/alimei/framework/db/Account;

    iget-wide v6, v5, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    const-wide/16 v10, -0x1

    cmp-long v5, v6, v10

    if-nez v5, :cond_2

    .line 2226
    :cond_1
    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v5}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    iput-object v5, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 2227
    const/4 v5, 0x2

    iput v5, v8, Lyc;->c:I

    .line 2228
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2229
    const-string/jumbo v5, "SyncMultipleMailsTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Account do not exist --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lahl;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :goto_1
    const/4 v1, 0x1

    .line 153
    :goto_2
    invoke-direct {p0, v1, v2, v3, v0}, Lahl;->a(ZJLjava/lang/Throwable;)V

    .line 155
    return v1

    .line 2197
    :pswitch_0
    :try_start_1
    const-string/jumbo v5, "basic_SyncHistoryMail"

    move-object v6, v5

    .line 2198
    goto :goto_0

    .line 2200
    :pswitch_1
    const-string/jumbo v5, "basic_SyncNewMail"

    move-object v6, v5

    .line 2201
    goto :goto_0

    .line 2233
    :cond_2
    iget-object v5, p0, Lahl;->l:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v5

    iput-object v5, p0, Lahl;->A:Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    .line 2234
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v5

    iput-object v5, p0, Lahl;->B:Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    .line 2235
    iget v5, p0, Lahl;->w:I

    new-array v7, v5, [Z

    .line 2236
    const/4 v5, 0x0

    move v6, v5

    :goto_3
    iget v5, p0, Lahl;->w:I

    if-ge v6, v5, :cond_a

    .line 2238
    iget-object v5, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v10

    iget-object v11, p0, Lahl;->c:[J

    aget-wide v12, v11, v6

    invoke-interface {v10, v12, v13}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v10

    aput-object v10, v5, v6

    .line 2242
    iget-object v5, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    aget-object v5, v5, v6

    if-nez v5, :cond_3

    .line 2243
    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v5}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    iput-object v5, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 2244
    const/4 v5, 0x2

    iput v5, v8, Lyc;->c:I

    .line 2245
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    .line 2246
    const-string/jumbo v5, "SyncMultipleMailsTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Mailbox do not exist for folderId --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lahl;->c:[J

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v4

    .line 149
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "SyncMultipleMailsTask"

    invoke-static {v5, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    move-object v0, v4

    goto :goto_2

    .line 2251
    .end local v4    # "tr":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    iget-object v10, p0, Lahl;->e:[Ljava/lang/String;

    iget-object v5, p0, Lahl;->b:[I

    aget v5, v5, v6

    const/4 v11, 0x1

    if-ne v5, v11, :cond_7

    const-string/jumbo v5, "0"

    :goto_4
    aput-object v5, v10, v6

    .line 2252
    iget-object v5, p0, Lahl;->g:[Ljava/lang/String;

    iget-object v10, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    aget-object v10, v10, v6

    iget-object v10, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v10, v5, v6

    .line 2256
    iget-object v5, p0, Lahl;->h:[I

    iget-object v10, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    aget-object v10, v10, v6

    iget v10, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v10}, Laja;->d(I)I

    move-result v10

    aput v10, v5, v6

    .line 2257
    iget-object v5, p0, Lahl;->j:[Ljava/lang/Boolean;

    iget-object v10, p0, Lahl;->h:[I

    aget v10, v10, v6

    invoke-static {v10}, Laja;->e(I)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v5, v6

    .line 2260
    iget-object v5, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    iget-object v5, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 2261
    :cond_4
    iget-object v5, p0, Lahl;->e:[Ljava/lang/String;

    const-string/jumbo v10, "0"

    aput-object v10, v5, v6

    .line 2264
    :cond_5
    iget-object v5, p0, Lahl;->f:[Ljava/lang/String;

    iget-object v10, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v10, v10, v6

    aput-object v10, v5, v6

    .line 2267
    iget-object v5, p0, Lahl;->b:[I

    aget v5, v5, v6

    const/4 v10, 0x4

    if-eq v5, v10, :cond_6

    iget-object v5, p0, Lahl;->b:[I

    aget v5, v5, v6

    const/4 v10, 0x1

    if-eq v5, v10, :cond_6

    const-string/jumbo v5, "0"

    iget-object v10, p0, Lahl;->e:[Ljava/lang/String;

    aget-object v10, v10, v6

    .line 2268
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    const/4 v5, 0x1

    :goto_5
    aput-boolean v5, v7, v6

    .line 2269
    iget-object v5, p0, Lahl;->u:[Z

    const/4 v10, 0x1

    aput-boolean v10, v5, v6

    .line 2272
    iget-object v5, p0, Lahl;->b:[I

    aget v5, v5, v6

    const/4 v10, 0x4

    if-ne v5, v10, :cond_9

    .line 2273
    iget-object v5, p0, Lahl;->u:[Z

    const/4 v10, 0x0

    aput-boolean v10, v5, v6

    .line 2279
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "SyncMultiple mStartSyncKey --->>"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lahl;->f:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", mCurrentSyncType: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lahl;->b:[I

    aget v10, v10, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", isSaveOldestItemId: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-boolean v10, v7, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->a(Ljava/lang/String;)I

    .line 2236
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_3

    .line 2251
    :cond_7
    iget-object v5, p0, Lahl;->d:[Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    goto/16 :goto_4

    .line 2268
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 2275
    :cond_9
    iget-object v5, p0, Lahl;->u:[Z

    const/4 v10, 0x1

    aput-boolean v10, v5, v6

    goto :goto_6

    .line 2284
    :cond_a
    new-instance v5, Lahl$1;

    invoke-direct {v5, p0, v7}, Lahl$1;-><init>(Lahl;[Z)V

    .line 2404
    invoke-direct {p0, v5}, Lahl;->a(Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 2406
    const/4 v6, 0x0

    .line 2407
    const/4 v5, 0x0

    move v7, v6

    move v6, v5

    :goto_7
    iget v5, p0, Lahl;->w:I

    if-ge v6, v5, :cond_c

    .line 2408
    iget-object v5, p0, Lahl;->n:[I

    aget v5, v5, v6

    if-lez v5, :cond_b

    const/4 v5, 0x1

    :goto_8
    or-int/2addr v7, v5

    .line 2407
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_7

    .line 2408
    :cond_b
    const/4 v5, 0x0

    goto :goto_8

    .line 2411
    :cond_c
    if-nez v7, :cond_d

    .line 2415
    iget-object v5, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v5, :cond_d

    .line 2416
    const-string/jumbo v5, "SyncMultipleMailsTask"

    const-string/jumbo v6, "sync multiple mails error"

    iget-object v7, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {v5, v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2417
    const/4 v5, 0x2

    iput v5, v8, Lyc;->c:I

    .line 2418
    iget-object v5, p0, Lahl;->t:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v5, v8, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 2419
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V

    goto/16 :goto_1

    .line 2421
    :cond_d
    const/4 v5, 0x1

    iput v5, v8, Lyc;->c:I

    .line 2422
    invoke-interface {v9, v8}, Lya;->a(Lyc;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2195
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
