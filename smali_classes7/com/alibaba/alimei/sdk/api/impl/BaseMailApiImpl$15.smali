.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$15;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailNormalAttachments(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$15;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$15;->val$mailServerId:Ljava/lang/String;

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
    .line 314
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 315
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$15;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v7

    .line 316
    .local v7, "ms":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v7, :cond_1

    .line 319
    iget-boolean v1, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    if-nez v1, :cond_0

    iget-boolean v1, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllAttachment(JJI)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
