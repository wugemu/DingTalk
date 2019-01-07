.class public abstract Lahd;
.super Lyr;
.source "AbsDownloadMailDetailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahd$a;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field private c:Lahd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "timeStamp"

    aput-object v2, v0, v1

    sput-object v0, Lahd;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lyr;-><init>()V

    .line 99
    new-instance v0, Lahd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lahd$a;-><init>(B)V

    iput-object v0, p0, Lahd;->c:Lahd$a;

    .line 100
    iget-object v0, p0, Lahd;->c:Lahd$a;

    .line 1085
    iput-object p1, v0, Lahd$a;->a:Ljava/lang/String;

    .line 101
    return-void
.end method

.method static synthetic a(Lahd;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 1
    .param p0, "x0"    # Lahd;

    .prologue
    .line 47
    iget-object v0, p0, Lahd;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    return-object v0
.end method

.method static synthetic a(Lahd;JJ)V
    .locals 7
    .param p0, "x0"    # Lahd;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 47
    .line 3290
    new-instance v0, Lahd$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lahd$2;-><init>(Lahd;JJ)V

    .line 3364
    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v1}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    .line 3365
    invoke-interface {v1, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method private static g()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getAutoDownloadMailDetail(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "status":I
    const-string/jumbo v5, "AbsDownloadMailDetailTask"

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "autoDownload for mail detail setting autoDownload: "

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-ne v8, v2, :cond_0

    .line 217
    const-string/jumbo v4, "AbsDownloadMailDetailTask"

    const-string/jumbo v5, "setting is never download"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return v3

    .line 222
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Laix;->b(Landroid/content/Context;)Z

    move-result v1

    .line 223
    .local v1, "netAvailable":Z
    if-nez v1, :cond_1

    .line 224
    const-string/jumbo v4, "AbsDownloadMailDetailTask"

    const-string/jumbo v5, "network is not available"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Laix;->a(Landroid/content/Context;)Z

    move-result v0

    .line 230
    .local v0, "isWifi":Z
    if-eqz v0, :cond_2

    .line 231
    const-string/jumbo v3, "AbsDownloadMailDetailTask"

    const-string/jumbo v5, "current network is wifi"

    invoke-static {v3, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 232
    goto :goto_0

    .line 238
    :cond_2
    if-nez v2, :cond_3

    .line 239
    const-string/jumbo v4, "AbsDownloadMailDetailTask"

    const-string/jumbo v5, "setting is only wifi, but current network is not wifi"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v3, v4

    .line 242
    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/alibaba/alimei/sdk/api/MailApi;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskContext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 199
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lahd$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahd$a;

    iput-object v0, p0, Lahd;->c:Lahd$a;

    .line 200
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
.end method

.method public final a_()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 193
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 194
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lahd;->c:Lahd$a;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final c()Z
    .locals 20

    .prologue
    .line 105
    invoke-static {}, Lahd;->g()Z

    move-result v11

    if-nez v11, :cond_0

    .line 106
    const/4 v11, 0x1

    .line 183
    :goto_0
    return v11

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lahd;->c:Lahd$a;

    iget-object v11, v11, Lahd$a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lahd;->a:Ljava/lang/String;

    .line 109
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Laix;->a(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 110
    const-string/jumbo v11, "AbsDownloadMailDetailTask"

    const-string/jumbo v14, "not wifi, so do not download"

    invoke-static {v11, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v11, 0x0

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lahd;->a:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lahd;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lahd;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lahd;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v11, :cond_3

    .line 117
    :cond_2
    const-string/jumbo v11, "AbsDownloadMailDetailTask"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "download mail detail task fail for mAccountName: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lahd;->a:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mUserAccountModel: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lahd;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v11, 0x1

    goto :goto_0

    .line 122
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lahd;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v11}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v14

    .line 2050
    move-object/from16 v0, p0

    iput-wide v14, v0, Lyr;->x:J

    .line 124
    move-object/from16 v0, p0

    iget-object v11, v0, Lahd;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v11}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    .line 125
    .local v2, "accountId":J
    const/4 v8, 0x3

    .line 126
    .local v8, "recentDay":I
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 127
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v11

    .line 2330
    iget v8, v11, Lafy;->m:I

    .line 131
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    int-to-long v0, v8

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x5265c00

    mul-long v16, v16, v18

    sub-long v12, v14, v16

    .line 133
    .local v12, "startMillis":J
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v14, "EmailProvider.db"

    const-string/jumbo v15, "Message"

    invoke-direct {v10, v11, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v10, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v11, Lahd;->d:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 135
    const-string/jumbo v11, "accountKey=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v14}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v11, "timeStamp>=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v14}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v11, "meetingInfo ISNULL"

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v11, "flagLoaded=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v14}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v11, "timeStamp DESC "

    invoke-virtual {v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 141
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v7

    .line 142
    .local v7, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 143
    :cond_5
    const-string/jumbo v11, "AbsDownloadMailDetailTask"

    const-string/jumbo v14, "no mail need to download detail"

    invoke-static {v11, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 147
    :cond_6
    const-string/jumbo v11, "AbsDownloadMailDetailTask"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "begin to download mail detail, size: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v5, 0x0

    .line 149
    .local v5, "hasDownload":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 150
    .local v6, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    invoke-static {}, Lahd;->g()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lahd;->h()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 152
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 155
    :cond_9
    if-eqz v6, :cond_7

    .line 158
    iget-object v14, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    invoke-static {v14}, Lair;->c(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 163
    const-string/jumbo v14, "AbsDownloadMailDetailTask"

    const-string/jumbo v15, "--------------begin download mail detail-----------"

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    new-instance v14, Lahd$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lahd$1;-><init>(Lahd;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V

    .line 3268
    const/4 v9, 0x0

    .line 3270
    invoke-virtual/range {p0 .. p0}, Lahd;->a()Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v15

    .line 3271
    if-eqz v15, :cond_a

    .line 3272
    const-string/jumbo v16, "AbsDownloadMailDetailTask"

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "download mail detail for serverId: "

    aput-object v19, v17, v18

    const/16 v18, 0x1

    iget-object v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, ", accountName: "

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lahd;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3273
    invoke-static/range {v19 .. v19}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string/jumbo v19, ", subject: "

    aput-object v19, v17, v18

    const/16 v18, 0x5

    iget-object v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mSubject:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    .line 3272
    invoke-static/range {v17 .. v17}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    iget-object v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v14}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V

    .line 165
    .local v9, "result":I
    :goto_2
    const/4 v14, -0x1

    if-eq v9, v14, :cond_7

    .line 166
    const/4 v5, 0x1

    .line 167
    monitor-enter p0

    .line 169
    :try_start_0
    const-string/jumbo v14, "AbsDownloadMailDetailTask"

    const-string/jumbo v15, "downloading mail detail wait"

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-wide/32 v14, 0x1d4c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_3
    :try_start_1
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 3276
    .end local v9    # "result":I
    :cond_a
    const-string/jumbo v14, "AbsDownloadMailDetailTask"

    const-string/jumbo v15, "download mail detail fail for mailApi is null"

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    const/4 v9, -0x1

    goto :goto_2

    .line 171
    .restart local v9    # "result":I
    :catch_0
    move-exception v4

    .line 172
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 178
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v9    # "result":I
    :cond_b
    if-nez v5, :cond_c

    .line 179
    const-string/jumbo v11, "AbsDownloadMailDetailTask"

    const-string/jumbo v14, "has no mail to download, so return"

    invoke-static {v11, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 183
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0xa

    return v0
.end method

.method protected final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    const-string/jumbo v0, "AbsDownloadMailDetailTask"

    const-string/jumbo v1, "download mail detail success, notify"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
