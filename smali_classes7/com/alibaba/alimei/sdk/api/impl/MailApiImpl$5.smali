.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->refreshMails(JILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$folderId:J

.field final synthetic val$folderType:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$folderType:I

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$folderId:J

    iput-object p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$accountName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 18
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 376
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$folderType:I

    invoke-static {v5}, Laja;->b(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$folderType:I

    invoke-static {v5}, Laja;->d(I)I

    move-result v7

    .line 378
    .local v7, "serverType":I
    new-instance v15, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v8, "Mailbox"

    invoke-direct {v15, v5, v6, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .local v15, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "serverId"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v8, "syncKey"

    aput-object v8, v5, v6

    invoke-virtual {v15, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 380
    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$folderId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v6, v8

    invoke-virtual {v15, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 382
    .local v14, "box":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-object v5, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 383
    :cond_0
    const-string/jumbo v5, "0"

    iput-object v5, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MailApiImpl refreshMails init Mailbox "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": mSyncKey = 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzb;->g(Ljava/lang/String;)I

    .line 387
    :cond_1
    new-instance v13, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v13, v0, v1, v14, v2}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 416
    .local v13, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v4

    .line 417
    .local v4, "mailService":Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
    sget-object v5, Lagy;->a:Lagy;

    .line 1030
    iget v9, v5, Lagy;->b:I

    .line 418
    .local v9, "windowSize":I
    sget-object v5, Lagy;->a:Lagy;

    .line 1043
    iget v10, v5, Lagy;->c:I

    .line 419
    .local v10, "support":I
    sget-object v5, Lagy;->a:Lagy;

    .line 1051
    iget v11, v5, Lagy;->d:I

    .line 422
    .local v11, "summarySize":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MailApiImpl refreshMails syncMail: windowSize="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " support="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " summarySize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " filterType=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->c(Ljava/lang/String;)I

    .line 425
    invoke-static {v7}, Laja;->e(I)Ljava/lang/Boolean;

    move-result-object v12

    .line 426
    .local v12, "sentStatus":Ljava/lang/Boolean;
    const/4 v5, 0x0

    iget-object v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-object v8, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-interface/range {v4 .. v13}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->syncMail(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/Boolean;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 432
    .end local v4    # "mailService":Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
    .end local v7    # "serverType":I
    .end local v9    # "windowSize":I
    .end local v10    # "support":I
    .end local v11    # "summarySize":I
    .end local v12    # "sentStatus":Ljava/lang/Boolean;
    .end local v13    # "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;>;"
    .end local v14    # "box":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v15    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-void

    .line 429
    :cond_2
    new-instance v5, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$5;->val$accountName:Ljava/lang/String;

    const/4 v8, 0x1

    move-wide/from16 v0, v16

    invoke-direct {v5, v0, v1, v6, v8}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(JLjava/lang/String;I)V

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 430
    const-string/jumbo v5, "MailApiImpl "

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "refreshMails  data: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
