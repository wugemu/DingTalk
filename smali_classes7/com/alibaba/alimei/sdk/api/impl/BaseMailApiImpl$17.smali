.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->queryMailAttachmentNumber(Ljava/lang/String;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$includeResourceAttachment:Z

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;->val$mailServerId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;->val$includeResourceAttachment:Z

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
    .line 358
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 359
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v7

    .line 360
    .local v7, "ms":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 361
    if-eqz v7, :cond_1

    iget-boolean v2, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFlagAttachment:Z

    if-nez v2, :cond_0

    iget-boolean v2, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->hasResourceAttach:Z

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    .line 363
    .local v1, "ads":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    iget-boolean v6, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$17;->val$includeResourceAttachment:Z

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAttachmentNumber(JJZ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 367
    .end local v1    # "ads":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    :cond_1
    return-void
.end method
