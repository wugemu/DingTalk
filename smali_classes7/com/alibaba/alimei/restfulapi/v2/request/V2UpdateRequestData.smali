.class public Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "V2UpdateRequestData.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;",
            ">;"
        }
    .end annotation
.end field

.field public spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->items:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->spaceId:Ljava/lang/String;

    .line 33
    return-void
.end method
