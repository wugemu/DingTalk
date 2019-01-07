.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->sendMail(Lagz;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$newMail:Lagz;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 24
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 1121
    new-instance v8, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v8}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 1122
    .local v8, "currentAccount":Lcom/alibaba/alimei/sdk/model/AddressModel;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1123
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 1124
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 1127
    .local v3, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$accountName:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    const/4 v10, 0x1

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveOrUpdateDraft(JLjava/lang/String;ZLcom/alibaba/alimei/sdk/model/AddressModel;Lagz;Z)J

    move-result-wide v12

    .line 1129
    .local v12, "msgId":J
    const-string/jumbo v4, "MailApiImpl "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sendMail msgId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newMail id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-wide v6, v6, Lagz;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sourceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-wide v6, v6, Lagz;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v14, 0x0

    .line 1131
    .local v14, "srcItemId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-wide v4, v4, Lagz;->k:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1132
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-wide v6, v6, Lagz;->k:J

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v2

    .line 1133
    .local v2, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v2, :cond_1

    .line 1134
    const-string/jumbo v4, "MailApiImpl "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "sourceId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-wide v10, v7, Lagz;->k:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " but query mail from db is null"

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string/jumbo v4, "SendMail"

    const-string/jumbo v5, "Invalid status"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "sourceId: "

    aput-object v9, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-wide v10, v9, Lagz;->k:J

    .line 1136
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v9, " but query mail from db is null"

    aput-object v9, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1135
    invoke-static {v4, v5, v6, v7}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$16;->val$newMail:Lagz;

    iget-object v14, v4, Lagz;->l:Ljava/lang/String;

    .line 1143
    .end local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    move-object v9, v3

    invoke-interface/range {v9 .. v14}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveSendMailOrDraftSyncMessage(JJLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 1144
    new-instance v16, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v18

    const/16 v23, 0x1

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v23}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 1145
    .local v16, "command":Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;->executeCommand()V

    .line 1147
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1148
    return-void

    .line 1139
    .end local v16    # "command":Lcom/alibaba/alimei/sdk/task/update/command/SingleMailSendTaskCommand;
    .restart local v2    # "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    iget-object v14, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    goto :goto_0
.end method
