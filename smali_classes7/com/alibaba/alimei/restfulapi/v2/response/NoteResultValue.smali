.class public Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;
.super Ljava/lang/Object;
.source "NoteResultValue.java"


# instance fields
.field private id:Ljava/lang/String;

.field private linkId:Ljava/lang/String;

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;->resources:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;->id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLinkId(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkId"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;->linkId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;->resources:Ljava/util/List;

    .line 44
    return-void
.end method
