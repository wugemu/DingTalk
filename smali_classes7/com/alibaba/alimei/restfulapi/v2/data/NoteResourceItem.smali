.class public Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;
.super Ljava/lang/Object;
.source "NoteResourceItem.java"


# instance fields
.field public contentId:Ljava/lang/String;

.field public height:I

.field public id:Ljava/lang/String;

.field public localId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public size:J

.field public tempUrl:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->size:J

    return-wide v0
.end method

.method public getTempUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->tempUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->width:I

    return v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->contentId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->height:I

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->localId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->size:J

    .line 75
    return-void
.end method

.method public setTempUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempLocation"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->tempUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;->width:I

    .line 87
    return-void
.end method
