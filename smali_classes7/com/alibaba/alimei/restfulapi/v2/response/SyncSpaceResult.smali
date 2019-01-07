.class public Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;
.super Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;
.source "SyncSpaceResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/data/Space;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Space;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;-><init>()V

    .line 18
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
            "Lcom/alibaba/alimei/restfulapi/v2/data/Space;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/Space;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/Space;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/SyncSpaceResult;->items:Ljava/util/List;

    .line 28
    return-void
.end method
