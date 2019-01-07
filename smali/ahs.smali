.class public final Lahs;
.super Lyr;
.source "MailChangeAllReadStatusTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahs$a;
    }
.end annotation


# instance fields
.field private a:Lahs$a;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZ)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "mailboxId"    # J
    .param p6, "readStatus"    # Z

    .prologue
    .line 102
    sget-object v4, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    sget-object v5, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;->Delete:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v1 .. v6}, Lyr;-><init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lahs$a;

    invoke-direct {v0}, Lahs$a;-><init>()V

    iput-object v0, p0, Lahs;->a:Lahs$a;

    .line 104
    iget-object v0, p0, Lahs;->a:Lahs$a;

    iput-object p1, v0, Lahs$a;->a:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lahs;->a:Lahs$a;

    iput-wide p2, v0, Lahs$a;->b:J

    .line 106
    iget-object v0, p0, Lahs;->a:Lahs$a;

    iput-wide p4, v0, Lahs$a;->c:J

    .line 107
    iget-object v0, p0, Lahs;->a:Lahs$a;

    iput-boolean p6, v0, Lahs$a;->d:Z

    .line 108
    iget-object v0, p0, Lahs;->a:Lahs$a;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lahs$a;->e:Ljava/lang/String;

    .line 109
    return-void
.end method

.method static synthetic a(Lahs;I)I
    .locals 0
    .param p0, "x0"    # Lahs;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lahs;->b:I

    return p1
.end method

.method static synthetic a(Lahs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lahs;

    .prologue
    .line 42
    iget-object v0, p0, Lahs;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lahs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lahs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lahs;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lahs;Z)Z
    .locals 1
    .param p0, "x0"    # Lahs;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahs;->c:Z

    return v0
.end method

.method static synthetic b(Lahs;)Lahs$a;
    .locals 1
    .param p0, "x0"    # Lahs;

    .prologue
    .line 42
    iget-object v0, p0, Lahs;->a:Lahs$a;

    return-object v0
.end method

.method static synthetic c(Lahs;)I
    .locals 1
    .param p0, "x0"    # Lahs;

    .prologue
    .line 42
    iget v0, p0, Lahs;->b:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskContext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 124
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 125
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lahs$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahs$a;

    iput-object v1, p0, Lahs;->a:Lahs$a;

    .line 126
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 118
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 119
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lahs;->a:Lahs$a;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "MailChangeAllReadStatusTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 19

    .prologue
    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->a:Lahs$a;

    iget-wide v4, v3, Lahs$a;->b:J

    .line 136
    .local v4, "accountId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->a:Lahs$a;

    iget-wide v6, v3, Lahs$a;->c:J

    .line 137
    .local v6, "mailboxId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->a:Lahs$a;

    iget-boolean v12, v3, Lahs$a;->d:Z

    .line 138
    .local v12, "readStatus":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->a:Lahs$a;

    iget-object v8, v3, Lahs$a;->a:Ljava/lang/String;

    .line 139
    .local v8, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->a:Lahs$a;

    iget-object v3, v3, Lahs$a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lahs;->d:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v16

    .line 142
    .local v16, "datasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    move-object/from16 v0, v16

    invoke-interface {v0, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v9

    .line 143
    .local v9, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v9, :cond_0

    .line 144
    const/4 v3, 0x1

    .line 230
    :goto_0
    return v3

    .line 147
    :cond_0
    new-instance v18, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v10, "EmailProvider.db"

    const-string/jumbo v11, "SyncMsg"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v18, "syncSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "accountId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v3, "type"

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v3, "extend_data"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v17

    check-cast v17, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 152
    .local v17, "messageSync":Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;
    if-nez v17, :cond_1

    .line 153
    const/4 v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->data:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lahs;->b:I

    .line 157
    const-string/jumbo v3, "MailChangeAllReadStatusTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "accountName: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mailbox serverId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", displayName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", leftCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lahs;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", last = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lahs;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", begin sync"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lzb;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lahs;->c:Z

    .line 165
    new-instance v2, Lahs$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lahs$1;-><init>(Lahs;JJLjava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)V

    .line 223
    .local v2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;>;"
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lahs;->b:I

    if-lez v3, :cond_4

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, ""

    :goto_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lahs;->d:Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget v3, v0, Lahs;->b:I

    const/16 v10, 0x64

    if-le v3, v10, :cond_3

    const/16 v13, 0x64

    .line 226
    .local v13, "updateCount":I
    :goto_3
    const/4 v3, 0x0

    invoke-static {v8, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v10

    iget-object v11, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lahs;->d:Ljava/lang/String;

    move-object v15, v2

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->tokenMailReadStatus(Ljava/lang/String;ZILjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_1

    .line 224
    .end local v13    # "updateCount":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lahs;->d:Ljava/lang/String;

    goto :goto_2

    .line 225
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lahs;->b:I

    goto :goto_3

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lahs;->c:Z

    goto/16 :goto_0
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0xa

    return v0
.end method
