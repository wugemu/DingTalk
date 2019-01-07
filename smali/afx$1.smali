.class final Lafx$1;
.super Ljava/lang/Object;
.source "MailBundle.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafx;


# direct methods
.method constructor <init>(Lafx;)V
    .locals 0
    .param p1, "this$0"    # Lafx;

    .prologue
    .line 39
    iput-object p1, p0, Lafx$1;->a:Lafx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountLogin(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 43
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->addDefaultFolderForAccount(J)Z

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->isCommonAccount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->addDefaultTagForAccount(J)V

    .line 49
    :cond_0
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v1

    .line 1173
    iget-boolean v0, v1, Lafy;->b:Z

    .line 50
    .local v0, "isAutoSyncFolderWhenLogin":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " login success->>isAutoSyncFolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->g(Ljava/lang/String;)I

    .line 51
    if-eqz v0, :cond_1

    iget v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 53
    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v1}, Lafv;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->startSyncFolder(Z)V

    .line 55
    :cond_1
    return-void
.end method

.method public final onAccountLogout(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 62
    iget-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->releaseDisplayer(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final onAccountRemoved(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 70
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAccountAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;

    move-result-object v0

    .line 71
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;->removeAccountRelativeData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 72
    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->releaseDisplayer(Ljava/lang/String;)V

    .line 73
    return-void
.end method
