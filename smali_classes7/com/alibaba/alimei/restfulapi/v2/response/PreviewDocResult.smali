.class public Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocResult;
.super Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;
.source "PreviewDocResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/V2SyncResult;-><init>()V

    .line 15
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
            "Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocResult;->items:Ljava/util/List;

    .line 25
    return-void
.end method
