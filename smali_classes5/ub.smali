.class public final Lub;
.super Lto;
.source "SpaceUpdateTask.java"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    const-string/jumbo v0, "cspace_dentry_capacity"

    :goto_0
    const-string/jumbo v1, "SpaceUpdateTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lub;->i:Ljava/util/List;

    .line 31
    iput-boolean p3, p0, Lub;->j:Z

    .line 32
    return-void

    .line 29
    :cond_0
    const-string/jumbo v0, "cspace_dentry_update"

    goto :goto_0
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 69
    const-wide/32 v0, 0xf9060

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceUpdateError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lub;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 73
    :cond_0
    iget-object v0, p0, Lub;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceUpdateError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lub;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 76
    :cond_1
    return-void
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;)V
    .locals 3
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 57
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;)V

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lub;->k:Ljava/util/List;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->getErrorCode()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lub;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final f()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 36
    iget-object v3, p0, Lub;->i:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lub;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 52
    :goto_0
    return v3

    .line 39
    :cond_1
    iget-object v3, p0, Lub;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setDataScope(I)V

    .line 40
    iget-object v3, p0, Lub;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setScopeId(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;-><init>()V

    .line 42
    .local v0, "queryParam":Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "spaceLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lub;->i:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p0, Lub;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    .local v1, "spaceId":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    .end local v1    # "spaceId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setSpaceIds(Ljava/util/List;)V

    .line 49
    iget-boolean v3, p0, Lub;->j:Z

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->setByDomain(Z)V

    .line 51
    iget-object v3, p0, Lub;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V

    .line 52
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lub;->k:Ljava/util/List;

    iget-object v1, p0, Lub;->k:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lub;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method
