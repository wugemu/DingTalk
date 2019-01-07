.class public final Lqr;
.super Lqi;
.source "FetchMailEmlTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr$a;
    }
.end annotation


# instance fields
.field private d:Lqr$a;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "uid"    # J
    .param p6, "folderId"    # J

    .prologue
    .line 68
    sget-object v4, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    sget-object v5, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lqi;-><init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lqr;->e:Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lqr;->a:Ljava/lang/String;

    .line 71
    new-instance v0, Lqr$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqr$a;-><init>(B)V

    iput-object v0, p0, Lqr;->d:Lqr$a;

    .line 72
    iget-object v0, p0, Lqr;->d:Lqr$a;

    iput-object p1, v0, Lqr$a;->a:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lqr;->d:Lqr$a;

    iput-wide p2, v0, Lqr$a;->b:J

    .line 74
    iget-object v0, p0, Lqr;->d:Lqr$a;

    iput-wide p6, v0, Lqr$a;->c:J

    .line 75
    iget-object v0, p0, Lqr;->d:Lqr$a;

    iput-wide p4, v0, Lqr$a;->d:J

    .line 76
    return-void
.end method

.method static synthetic a(Lqr;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lqr;

    .prologue
    .line 54
    iget-object v0, p0, Lqr;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lqr;)Lqr$a;
    .locals 1
    .param p0, "x0"    # Lqr;

    .prologue
    .line 54
    iget-object v0, p0, Lqr;->d:Lqr$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskContext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 238
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lqr$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqr$a;

    iput-object v1, p0, Lqr;->d:Lqr$a;

    .line 239
    iget-object v1, p0, Lqr;->d:Lqr$a;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lqr;->d:Lqr$a;

    iget-object v1, v1, Lqr$a;->a:Ljava/lang/String;

    iput-object v1, p0, Lqr;->a:Ljava/lang/String;

    .line 242
    :cond_0
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 232
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lqr;->d:Lqr$a;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string/jumbo v0, "FetchMailEmlTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 18

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->d:Lqr$a;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    :cond_0
    const/4 v3, 0x0

    .line 217
    :goto_0
    return v3

    .line 85
    :cond_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lza;->a(Landroid/content/Context;)Z

    move-result v12

    .line 86
    .local v12, "isWifi":Z
    if-nez v12, :cond_2

    .line 87
    const/4 v3, 0x0

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v10

    .line 91
    .local v10, "eventCenter":Lya;
    invoke-virtual/range {p0 .. p0}, Lqr;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    new-instance v11, Lyc;

    const-string/jumbo v3, "basic_LoadMailBody"

    move-object/from16 v0, p0

    iget-object v4, v0, Lqr;->a:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {v11, v3, v4, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .local v11, "eventMessage":Lyc;
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    iput-object v3, v11, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->d:Lqr$a;

    iget-wide v6, v3, Lqr$a;->c:J

    iput-wide v6, v11, Lyc;->e:J

    .line 95
    invoke-interface {v10, v11}, Lya;->a(Lyc;)V

    .line 96
    const/4 v3, 0x1

    goto :goto_0

    .line 99
    .end local v11    # "eventMessage":Lyc;
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v13

    .line 100
    .local v13, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->d:Lqr$a;

    iget-wide v6, v3, Lqr$a;->b:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->d:Lqr$a;

    iget-wide v14, v3, Lqr$a;->c:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->d:Lqr$a;

    iget-wide v0, v3, Lqr$a;->d:J

    move-wide/from16 v16, v0

    .line 101
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v15, v3}, Lair;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v13, v6, v7, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v2

    .line 102
    .local v2, "dbMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v2, :cond_4

    .line 103
    new-instance v11, Lyc;

    const-string/jumbo v3, "basic_LoadMailFull"

    move-object/from16 v0, p0

    iget-object v4, v0, Lqr;->a:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {v11, v3, v4, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    .restart local v11    # "eventMessage":Lyc;
    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    iput-object v3, v11, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->d:Lqr$a;

    iget-wide v6, v3, Lqr$a;->c:J

    iput-wide v6, v11, Lyc;->e:J

    .line 106
    invoke-interface {v10, v11}, Lya;->a(Lyc;)V

    .line 107
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 110
    .end local v11    # "eventMessage":Lyc;
    :cond_4
    const-string/jumbo v3, "FetchMailEmlTask"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "fetch eml uid:"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lqr;->d:Lqr$a;

    iget-wide v14, v7, Lqr$a;->d:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lra;->a()Lra;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lqr;->d:Lqr$a;

    iget-wide v6, v4, Lqr$a;->b:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lqr;->d:Lqr$a;

    iget-wide v14, v4, Lqr$a;->c:J

    invoke-virtual {v3, v6, v7, v14, v15}, Lra;->a(JJ)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "folderServerId":Ljava/lang/String;
    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lqr;->c:Lcom/alibaba/alimei/emailcommon/Account;

    move-object/from16 v0, p0

    iget-object v6, v0, Lqr;->d:Lqr$a;

    iget-wide v6, v6, Lqr$a;->d:J

    new-instance v8, Lqr$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lqr$1;-><init>(Lqr;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V

    invoke-virtual/range {v3 .. v8}, Lqa;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLuv;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lqr;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lqr;->e:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_1
    :try_start_1
    monitor-exit v4

    .line 217
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "fetchMailSummaryFromEML Interrupted"

    invoke-static {v3}, Lyx;->a(Ljava/lang/String;)I

    .line 213
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x2

    return v0
.end method
