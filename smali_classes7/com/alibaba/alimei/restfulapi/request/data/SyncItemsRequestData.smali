.class public Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "SyncItemsRequestData.java"


# instance fields
.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    .line 21
    return-void
.end method

.method private isEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFolder(Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public getFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    return-object v0
.end method

.method public isEmptyRequestData()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemsRequestData;->folders:Ljava/util/List;

    .line 30
    return-void
.end method
