.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->changeMailTags(Ljava/util/List;Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$isAddTag:Z

.field final synthetic val$mailServerIds:Ljava/util/List;

.field final synthetic val$tags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$isAddTag:Z

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$mailServerIds:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$tags:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 510
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 511
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-boolean v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$isAddTag:Z

    if-eqz v2, :cond_0

    .line 512
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$mailServerIds:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$tags:Ljava/util/List;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->addMailTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 519
    :goto_0
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;

    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;-><init>(Ljava/lang/String;J)V

    .line 520
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;->executeCommand()V

    .line 521
    return-void

    .line 514
    .end local v0    # "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$mailServerIds:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$13;->val$tags:Ljava/util/List;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->removeMailTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method
