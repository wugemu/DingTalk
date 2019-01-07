.class public final Lqs;
.super Lqj;
.source "FetchMailSummaryTask.java"


# instance fields
.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "uid"    # J
    .param p6, "folderId"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Lqj;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lqs;->g:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lqs;->a:Ljava/lang/String;

    .line 55
    iput-wide p2, p0, Lqs;->d:J

    .line 56
    iput-wide p4, p0, Lqs;->e:J

    .line 57
    iput-wide p6, p0, Lqs;->f:J

    .line 58
    return-void
.end method

.method static synthetic a(Lqs;)J
    .locals 2
    .param p0, "x0"    # Lqs;

    .prologue
    .line 39
    iget-wide v0, p0, Lqs;->d:J

    return-wide v0
.end method

.method static synthetic a(Lqs;JZLjava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lqs;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    .line 1212
    if-eqz p3, :cond_0

    .line 1213
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 1214
    iget-wide v1, p0, Lqs;->d:J

    iget-object v3, p0, Lqs;->a:Ljava/lang/String;

    move-wide v4, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailSummary(JLjava/lang/String;JLjava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic b(Lqs;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lqs;

    .prologue
    .line 39
    iget-object v0, p0, Lqs;->g:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, "FetchMailSummaryTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 24

    .prologue
    .line 62
    const-string/jumbo v2, "FetchMailSummaryTask"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "FetchMailSummaryTask running, mail uid:"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v17

    .line 65
    .local v17, "eventCenter":Lya;
    invoke-virtual/range {p0 .. p0}, Lqs;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    new-instance v18, Lyc;

    const-string/jumbo v2, "basic_LoadMailBody"

    move-object/from16 v0, p0

    iget-object v3, v0, Lqs;->a:Ljava/lang/String;

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .local v18, "eventMessage":Lyc;
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 68
    move-object/from16 v0, p0

    iget-wide v2, v0, Lqs;->f:J

    move-object/from16 v0, v18

    iput-wide v2, v0, Lyc;->e:J

    .line 69
    invoke-interface/range {v17 .. v18}, Lya;->a(Lyc;)V

    .line 70
    const/4 v2, 0x1

    .line 203
    .end local v18    # "eventMessage":Lyc;
    :goto_0
    return v2

    .line 73
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v19

    .line 74
    .local v19, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lqs;->d:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->f:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqs;->e:J

    move-wide/from16 v22, v0

    .line 75
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5}, Lair;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v14

    .line 76
    .local v14, "dbMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v14, :cond_1

    .line 77
    new-instance v18, Lyc;

    const-string/jumbo v2, "basic_LoadMailBody"

    move-object/from16 v0, p0

    iget-object v3, v0, Lqs;->a:Ljava/lang/String;

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    .restart local v18    # "eventMessage":Lyc;
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 79
    move-object/from16 v0, p0

    iget-wide v2, v0, Lqs;->f:J

    move-object/from16 v0, v18

    iput-wide v2, v0, Lyc;->e:J

    .line 80
    invoke-interface/range {v17 .. v18}, Lya;->a(Lyc;)V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 87
    .end local v18    # "eventMessage":Lyc;
    :cond_1
    iget-object v2, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlPartId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    const-string/jumbo v2, "FetchMailSummaryTask"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "UID "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " fetch html part"

    aput-object v6, v3, v5

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v7, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlPartId:Ljava/lang/String;

    .line 90
    .local v7, "partId":Ljava/lang/String;
    iget-object v8, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlEncoding:Ljava/lang/String;

    .line 91
    .local v8, "encoding":Ljava/lang/String;
    iget-object v9, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlConentType:Ljava/lang/String;

    .line 112
    .local v9, "contentType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lra;->a()Lra;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->d:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqs;->f:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v10, v11, v0, v1}, Lra;->a(JJ)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "folderServerId":Ljava/lang/String;
    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lqs;->c:Lcom/alibaba/alimei/emailcommon/Account;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lqs;->e:J

    const-wide/16 v10, -0x1

    new-instance v12, Lqs$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lqs$1;-><init>(Lqs;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V

    invoke-virtual/range {v2 .. v12}, Lqa;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lqs;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lqs;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 92
    .end local v4    # "folderServerId":Ljava/lang/String;
    .end local v7    # "partId":Ljava/lang/String;
    .end local v8    # "encoding":Ljava/lang/String;
    .end local v9    # "contentType":Ljava/lang/String;
    :cond_2
    iget-object v2, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextPartId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    const-string/jumbo v2, "FetchMailSummaryTask"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "UID "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " fetch text part"

    aput-object v6, v3, v5

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v7, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextPartId:Ljava/lang/String;

    .line 95
    .restart local v7    # "partId":Ljava/lang/String;
    iget-object v8, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextEncoding:Ljava/lang/String;

    .line 96
    .restart local v8    # "encoding":Ljava/lang/String;
    iget-object v9, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextContentType:Ljava/lang/String;

    .restart local v9    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v7    # "partId":Ljava/lang/String;
    .end local v8    # "encoding":Ljava/lang/String;
    .end local v9    # "contentType":Ljava/lang/String;
    :cond_3
    new-instance v18, Lyc;

    const-string/jumbo v2, "basic_LoadMailBody"

    move-object/from16 v0, p0

    iget-object v3, v0, Lqs;->a:Ljava/lang/String;

    const/4 v5, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .restart local v18    # "eventMessage":Lyc;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "mail(uid:"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->e:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, ") not find body part"

    aput-object v5, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 100
    .local v16, "errorMsg":Ljava/lang/String;
    new-instance v20, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    .line 101
    .local v20, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-static/range {v20 .. v20}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lqs;->a:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lyc;->f:Ljava/lang/String;

    .line 103
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v13, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v2, "accountId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v2, "folderId"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->f:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "uid"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqs;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-object/from16 v0, v18

    iput-object v13, v0, Lyc;->g:Ljava/lang/Object;

    .line 108
    invoke-interface/range {v17 .. v18}, Lya;->a(Lyc;)V

    .line 109
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 198
    .end local v13    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v16    # "errorMsg":Ljava/lang/String;
    .end local v18    # "eventMessage":Lyc;
    .end local v20    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .restart local v4    # "folderServerId":Ljava/lang/String;
    .restart local v7    # "partId":Ljava/lang/String;
    .restart local v8    # "encoding":Ljava/lang/String;
    .restart local v9    # "contentType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 199
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 201
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
