.class public final Lqq;
.super Lqj;
.source "FetchMailCalendarTask.java"


# static fields
.field public static d:Lps;


# instance fields
.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lqq;->d:Lps;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "uid"    # J
    .param p6, "folderId"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Lqj;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lqq;->h:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lqq;->a:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lqq;->e:J

    .line 49
    iput-wide p4, p0, Lqq;->f:J

    .line 50
    iput-wide p6, p0, Lqq;->g:J

    .line 51
    return-void
.end method

.method static synthetic a(Lqq;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lqq;

    .prologue
    .line 33
    iget-object v0, p0, Lqq;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    const-string/jumbo v0, "FetchMailCalendarTask"

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_0
    iget-object v1, p0, Lqq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lqq;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 176
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lqq;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p0, "x0"    # Lqq;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lqq;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    return-void
.end method

.method static synthetic a(Lqq;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lqq;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    .line 1146
    sget-object v0, Lqq;->d:Lps;

    if-nez v0, :cond_0

    .line 1147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqq;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1148
    :goto_0
    return-void

    .line 1151
    :cond_0
    sget-object v0, Lqq;->d:Lps;

    new-instance v1, Lqq$2;

    invoke-direct {v1, p0, p1}, Lqq$2;-><init>(Lqq;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V

    invoke-interface {v0, p2, v1}, Lps;->a(Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method static synthetic b(Lqq;)J
    .locals 2
    .param p0, "x0"    # Lqq;

    .prologue
    .line 33
    iget-wide v0, p0, Lqq;->e:J

    return-wide v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "FetchMailCalendarTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 20

    .prologue
    .line 55
    const-string/jumbo v2, "FetchMailCalendarTask"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "FetchMailCalendarTask running, mail uid:"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqq;->f:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v15

    .line 58
    .local v15, "eventCenter":Lya;
    invoke-virtual/range {p0 .. p0}, Lqq;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v16, Lyc;

    const-string/jumbo v2, "basic_LoadMailBody"

    move-object/from16 v0, p0

    iget-object v3, v0, Lqq;->a:Ljava/lang/String;

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    .local v16, "eventMessage":Lyc;
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 61
    move-object/from16 v0, p0

    iget-wide v2, v0, Lqq;->g:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lyc;->e:J

    .line 62
    invoke-interface/range {v15 .. v16}, Lya;->a(Lyc;)V

    .line 63
    const/4 v2, 0x1

    .line 137
    .end local v16    # "eventMessage":Lyc;
    :goto_0
    return v2

    .line 66
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v17

    .line 67
    .local v17, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lqq;->e:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqq;->g:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqq;->f:J

    move-wide/from16 v18, v0

    .line 68
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5}, Lair;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v13

    .line 69
    .local v13, "dbMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v13, :cond_1

    .line 70
    new-instance v16, Lyc;

    const-string/jumbo v2, "basic_LoadMailBody"

    move-object/from16 v0, p0

    iget-object v3, v0, Lqq;->a:Ljava/lang/String;

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    .restart local v16    # "eventMessage":Lyc;
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 72
    move-object/from16 v0, p0

    iget-wide v2, v0, Lqq;->g:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lyc;->e:J

    .line 73
    invoke-interface/range {v15 .. v16}, Lya;->a(Lyc;)V

    .line 74
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    .end local v16    # "eventMessage":Lyc;
    :cond_1
    iget-object v2, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarPartId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const-string/jumbo v2, "FetchMailCalendarTask"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "UID "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqq;->f:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " fetch html part"

    aput-object v6, v3, v5

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v7, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarPartId:Ljava/lang/String;

    .line 80
    .local v7, "partId":Ljava/lang/String;
    iget-object v8, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarEncoding:Ljava/lang/String;

    .line 81
    .local v8, "encoding":Ljava/lang/String;
    iget-object v9, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCalendarContentType:Ljava/lang/String;

    .line 83
    .local v9, "contentType":Ljava/lang/String;
    invoke-static {}, Lra;->a()Lra;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lqq;->e:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lqq;->g:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v11, v0, v1}, Lra;->a(JJ)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "folderServerId":Ljava/lang/String;
    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lqq;->c:Lcom/alibaba/alimei/emailcommon/Account;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lqq;->f:J

    const-wide/16 v10, -0x1

    new-instance v12, Lqq$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lqq$1;-><init>(Lqq;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V

    invoke-virtual/range {v2 .. v12}, Lqa;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lqq;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 131
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lqq;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 125
    .end local v4    # "folderServerId":Ljava/lang/String;
    .end local v7    # "partId":Ljava/lang/String;
    .end local v8    # "encoding":Ljava/lang/String;
    .end local v9    # "contentType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "FetchMailCalendarTask"

    const-string/jumbo v3, "no calendar part found"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 132
    .restart local v4    # "folderServerId":Ljava/lang/String;
    .restart local v7    # "partId":Ljava/lang/String;
    .restart local v8    # "encoding":Ljava/lang/String;
    .restart local v9    # "contentType":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 133
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
