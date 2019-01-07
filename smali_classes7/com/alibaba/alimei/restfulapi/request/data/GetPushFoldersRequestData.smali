.class public Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "GetPushFoldersRequestData.java"


# instance fields
.field public folderIdList:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Folder;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;->folderIdList:Ljava/util/List;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/Folder;

    .line 22
    .local v0, "f":Lcom/alibaba/alimei/restfulapi/data/Folder;
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetPushFoldersRequestData;->folderIdList:Ljava/util/List;

    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    .end local v0    # "f":Lcom/alibaba/alimei/restfulapi/data/Folder;
    :cond_0
    return-void
.end method
