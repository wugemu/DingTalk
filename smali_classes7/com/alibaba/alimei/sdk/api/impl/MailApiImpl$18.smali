.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->deleteMailByServerId(Lxv;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$listener:Lxv;

.field final synthetic val$mailServerIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;[Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$mailServerIds:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$listener:Lxv;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 20
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 1220
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1223
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    const/4 v5, 0x6

    invoke-interface {v4, v6, v7, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v18

    .line 1224
    .local v18, "trashMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 1227
    .local v3, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$mailServerIds:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1228
    .local v11, "deleteServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$mailServerIds:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1231
    .local v15, "moveServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 1232
    .local v17, "targetIds":[Ljava/lang/String;
    if-nez v18, :cond_3

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$mailServerIds:[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1270
    :cond_0
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v4, v0

    if-lez v4, :cond_1

    .line 1271
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteMailByServerIdByUser(JLjava/lang/String;[Ljava/lang/String;)V

    .line 1272
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MailApiImpl deleteMailByServerId targetIds="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->g(Ljava/lang/String;)I

    .line 1273
    new-instance v2, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lcom/alibaba/alimei/sdk/task/update/command/MailDeleteCommand;-><init>(Ljava/lang/String;J)V

    .line 1274
    .local v2, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1278
    .end local v2    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1279
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MailApiImpl deleteMailByServerId moveServerIds="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->g(Ljava/lang/String;)I

    .line 1280
    new-instance v2, Lcom/alibaba/alimei/sdk/task/update/command/MailMoveCommand;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lcom/alibaba/alimei/sdk/task/update/command/MailMoveCommand;-><init>(Ljava/lang/String;J)V

    .line 1281
    .restart local v2    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1283
    .end local v2    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_2
    return-void

    .line 1235
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$mailServerIds:[Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMailFoldersByServerId(J[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 1236
    .local v14, "mailFolderMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v14, :cond_2

    .line 1239
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1240
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1241
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1242
    .local v16, "serverId":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1245
    .local v12, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1246
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$listener:Lxv;

    if-eqz v4, :cond_4

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$18;->val$listener:Lxv;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    :cond_5
    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1255
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1257
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "targetIds":[Ljava/lang/String;
    check-cast v17, [Ljava/lang/String;

    .restart local v17    # "targetIds":[Ljava/lang/String;
    goto :goto_0

    .line 1259
    :cond_7
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-wide v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v16, v10, v19

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
