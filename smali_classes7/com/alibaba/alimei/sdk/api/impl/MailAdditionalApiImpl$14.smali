.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$14;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->changeMailTags(Ljava/lang/String;Ljava/util/List;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$mailServerId:Ljava/lang/String;

.field final synthetic val$tags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$14;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$14;->val$mailServerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$14;->val$tags:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 538
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 539
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$14;->val$mailServerId:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$14;->val$tags:Ljava/util/List;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changeMailTagsWithIds(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    .line 541
    .local v7, "tagChanged":Z
    if-eqz v7, :cond_0

    .line 542
    const-string/jumbo v2, "MailAdditionalApiImpl"

    const-string/jumbo v3, "tag changed, need sync!!!"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;

    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;-><init>(Ljava/lang/String;J)V

    .line 545
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;->executeCommand()V

    .line 550
    .end local v0    # "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 551
    return-void

    .line 547
    :cond_0
    const-string/jumbo v2, "MailAdditionalApiImpl"

    const-string/jumbo v3, "tag not changed, need not sync!!!!"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
