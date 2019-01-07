.class public Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "V2SyncReqeustData.java"


# instance fields
.field public dataScope:I

.field public loadMoreId:Ljava/lang/String;

.field public queryParam:Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

.field public scopeId:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;

.field public syncKey:Ljava/lang/String;

.field public windowOffset:Ljava/lang/Integer;

.field public windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataScope()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    return v0
.end method

.method public getLoadMoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParam()Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->queryParam:Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowOffset()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    return v0
.end method

.method public setDataScope(I)V
    .locals 0
    .param p1, "dataScope"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->dataScope:I

    .line 42
    return-void
.end method

.method public setLoadMoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadMoreId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->loadMoreId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setQueryParam(Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;)V
    .locals 0
    .param p1, "queryParam"    # Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->queryParam:Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;

    .line 80
    return-void
.end method

.method public setScopeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "scopeId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->scopeId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->spaceId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->syncKey:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setWindowOffset(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "windowOffset"    # Ljava/lang/Integer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowOffset:Ljava/lang/Integer;

    .line 60
    return-void
.end method

.method public setWindowSize(I)V
    .locals 0
    .param p1, "windowSize"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;->windowSize:I

    .line 66
    return-void
.end method
