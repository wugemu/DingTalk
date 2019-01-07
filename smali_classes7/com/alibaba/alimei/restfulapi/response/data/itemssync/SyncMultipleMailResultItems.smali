.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;
.super Ljava/lang/Object;
.source "SyncMultipleMailResultItems.java"


# instance fields
.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;",
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
.method public getFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;->folders:Ljava/util/List;

    return-object v0
.end method

.method public setFolders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;->folders:Ljava/util/List;

    .line 18
    return-void
.end method
