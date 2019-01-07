.class public Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;
.super Ljava/lang/Object;
.source "SyncQueryParam.java"


# instance fields
.field private bizType:Ljava/lang/String;

.field private byDomain:Z

.field private condition:Ljava/lang/String;

.field private excludeFolders:Z

.field private excludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private length:I

.field private loadMoreId:Ljava/lang/String;

.field private offset:I

.field private path:Ljava/lang/String;

.field private size:I

.field private spaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->excludes:Ljava/util/List;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->length:I

    return v0
.end method

.method public getLoadMoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->loadMoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->offset:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->size:I

    return v0
.end method

.method public getSpaceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->spaceIds:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->types:Ljava/util/List;

    return-object v0
.end method

.method public isByDomain()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->byDomain:Z

    return v0
.end method

.method public isExcludeFolders()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->excludeFolders:Z

    return v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->bizType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setByDomain(Z)V
    .locals 0
    .param p1, "byDomain"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->byDomain:Z

    .line 92
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->condition:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setExcludeFolders(Z)V
    .locals 0
    .param p1, "excludeFolders"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->excludeFolders:Z

    .line 100
    return-void
.end method

.method public setExcludes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->excludes:Ljava/util/List;

    .line 116
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->length:I

    .line 76
    return-void
.end method

.method public setLoadMoreId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadMoreId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->loadMoreId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->offset:I

    .line 44
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->path:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->size:I

    .line 52
    return-void
.end method

.method public setSpaceIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->spaceIds:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->type:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/SyncQueryParam;->types:Ljava/util/List;

    .line 132
    return-void
.end method
