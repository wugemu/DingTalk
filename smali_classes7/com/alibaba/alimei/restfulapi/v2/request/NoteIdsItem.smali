.class public Lcom/alibaba/alimei/restfulapi/v2/request/NoteIdsItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "NoteIdsItem.java"


# instance fields
.field public folderId:Ljava/lang/String;

.field public linkIds:Ljava/util/List;
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
    .line 7
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/NoteIdsItem;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkIds()Ljava/util/List;
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
    .line 18
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/NoteIdsItem;->linkIds:Ljava/util/List;

    return-object v0
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/NoteIdsItem;->folderId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setLinkIds(Ljava/util/List;)V
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
    .line 22
    .local p1, "linkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/NoteIdsItem;->linkIds:Ljava/util/List;

    .line 23
    return-void
.end method
