.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->saveMailDraft(Lagz;ZLxv;)V
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

.field final synthetic val$syncToServer:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->val$newMail:Lagz;

    iput-boolean p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->val$syncToServer:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 16
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1164
    new-instance v8, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v8}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 1165
    .local v8, "currentAccount":Lcom/alibaba/alimei/sdk/model/AddressModel;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iput-object v2, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1166
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    iput-object v2, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 1167
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 1168
    .local v3, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->val$accountName:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->val$newMail:Lagz;

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveOrUpdateDraft(JLjava/lang/String;ZLcom/alibaba/alimei/sdk/model/AddressModel;Lagz;Z)J

    move-result-wide v14

    .line 1171
    .local v14, "msgId":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$17;->val$syncToServer:Z

    if-eqz v2, :cond_0

    .line 1172
    const-string/jumbo v2, "MailApiImpl "

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveMailDraft syncToServer account="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v14, v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveSendMailOrDraftSyncMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 1174
    new-instance v10, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v12

    invoke-direct/range {v10 .. v15}, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;-><init>(Ljava/lang/String;JJ)V

    .line 1175
    .local v10, "command":Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;
    invoke-virtual {v10}, Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;->executeCommand()V

    .line 1178
    .end local v10    # "command":Lcom/alibaba/alimei/sdk/task/update/command/SingleDraftTaskCommand;
    :cond_0
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1179
    return-void
.end method
