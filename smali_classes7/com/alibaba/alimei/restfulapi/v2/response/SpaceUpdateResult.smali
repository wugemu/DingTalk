.class public Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;
.super Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;
.source "SpaceUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/SpaceUpdateInfo;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;->items:Ljava/util/List;

    .line 23
    return-void
.end method
