.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->sendMailById(J)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$mailId:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->val$mailId:J

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 12
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 663
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->val$mailId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveSendMailOrDraftSyncMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 665
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v11

    .line 666
    .local v11, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    if-eqz v11, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$500(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getCopySentMailHasSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$700(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsCopySentMail(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$602(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Z)Z

    .line 670
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;

    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->val$mailId:J

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$7;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v10}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$600(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Z

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;-><init>(Ljava/lang/String;JJJZZZ)V

    .line 671
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->executeCommand()V

    .line 672
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 673
    return-void
.end method
