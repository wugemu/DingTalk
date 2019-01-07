.class public final Lty;
.super Lto;
.source "RestoreDentryTask.java"


# instance fields
.field private i:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "autoRename"    # Z
    .param p4, "autoFixPath"    # Z

    .prologue
    .line 29
    const-string/jumbo v0, "cspace_dentry_restore"

    const-string/jumbo v1, "RestoreDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lty;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 31
    iput-boolean p3, p0, Lty;->j:Z

    .line 32
    iput-boolean p4, p0, Lty;->k:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 76
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 77
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryRestoreBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lty;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lty;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 85
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryRestoreBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lty;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 87
    :cond_2
    return-void

    .line 78
    :cond_3
    const-wide/32 v0, 0xc6b718

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 79
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lty;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 80
    :cond_4
    const-wide/32 v0, 0xc6c2d0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lty;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V
    .locals 5
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 58
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V

    .line 61
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    .line 63
    .local v0, "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorCode()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lty;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    :cond_1
    return-void
.end method

.method protected final f()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 37
    iget-object v2, p0, Lty;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lty;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v3, p0, Lty;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;-><init>()V

    .line 40
    .local v0, "restoreItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->setAction(I)V

    .line 41
    iget-boolean v2, p0, Lty;->k:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->setAuthFixPath(Z)V

    .line 42
    iget-boolean v2, p0, Lty;->j:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->setAuthReName(Z)V

    .line 43
    iget-object v2, p0, Lty;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;->setPath(Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "restoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lty;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 48
    .end local v0    # "restoreItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;
    .end local v1    # "restoreItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRestoreItem;>;"
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lty;->e_()V

    .line 54
    return-void
.end method
