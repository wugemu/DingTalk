.class public Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;
.super Ljava/lang/Object;
.source "V2SyncItemsReqeustData.java"


# instance fields
.field private sync:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;->sync:Ljava/util/List;

    return-object v0
.end method

.method public setSync(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "sync":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncItemsReqeustData;->sync:Ljava/util/List;

    .line 16
    return-void
.end method
