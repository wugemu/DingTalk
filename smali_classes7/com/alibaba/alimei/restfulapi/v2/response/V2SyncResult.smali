.class public abstract Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;
.super Ljava/lang/Object;
.source "V2SyncResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected errorCode:J

.field protected errorMessage:Ljava/lang/String;

.field protected forceFullSync:Z

.field protected loadMoreId:Ljava/lang/String;

.field protected more:Z

.field protected success:Z

.field protected syncKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorCode()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->errorCode:J

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public getLoadMoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->loadMoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public isForceFullSync()Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->forceFullSync:Z

    return v0
.end method

.method public isMore()Z
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->more:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->success:Z

    return v0
.end method

.method public setErrorCode(J)V
    .locals 1
    .param p1, "errorCode"    # J

    .prologue
    .line 57
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->errorCode:J

    .line 58
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 65
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->errorMessage:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setForceFullSync(Z)V
    .locals 0
    .param p1, "forceFullSync"    # Z

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->forceFullSync:Z

    .line 42
    return-void
.end method

.method public abstract setItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public setLoadMoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadMoreId"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->loadMoreId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMore(Z)V
    .locals 0
    .param p1, "more"    # Z

    .prologue
    .line 29
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->more:Z

    .line 30
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 48
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->success:Z

    .line 49
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 23
    .local p0, "this":Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;, "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult<TT;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;->syncKey:Ljava/lang/String;

    .line 24
    return-void
.end method
