.class Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$15;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseFolderApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;->queryInboxFolder(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl$15;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseFolderApiImpl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 290
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-interface {v2, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v1

    .line 291
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    const/4 v0, 0x0

    .line 292
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_0

    .line 293
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 295
    :cond_0
    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 296
    return-void
.end method
