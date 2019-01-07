.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->addAndRemoveMailTags(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lxv;)V
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

.field final synthetic val$addTags:Ljava/util/List;

.field final synthetic val$mailServerIds:Ljava/util/List;

.field final synthetic val$removeTags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->val$mailServerIds:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->val$addTags:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->val$removeTags:Ljava/util/List;

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
    .line 332
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 333
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->val$mailServerIds:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->val$addTags:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$8;->val$removeTags:Ljava/util/List;

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->addAndRemoveTags(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 337
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;

    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;-><init>(Ljava/lang/String;J)V

    .line 338
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeTagsCommand;->executeCommand()V

    .line 339
    return-void
.end method
