.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
.source "SyncMailResultItems.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;-><init>()V

    .line 11
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
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;->items:Ljava/util/List;

    .line 20
    return-void
.end method
