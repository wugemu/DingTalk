.class public Lcom/alibaba/alimei/restfulapi/v2/data/Note;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "Note.java"


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field private bodyHtml:Ljava/lang/String;

.field private createTime:J

.field private creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

.field private flagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private folderId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isList:Ljava/lang/Boolean;

.field private linkId:Ljava/lang/String;

.field private modifiedTime:J

.field private modifier:Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;

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

.field private subject:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;",
            ">;"
        }
    .end annotation
.end field

.field private warnTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
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
    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getBodyHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->bodyHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->createTime:J

    return-wide v0
.end method

.method public getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    return-object v0
.end method

.method public getFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->flagList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsList()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->isList:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->modifiedTime:J

    return-wide v0
.end method

.method public getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;

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
    .line 140
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->tagList:Ljava/util/List;

    return-object v0
.end method

.method public getWarnTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->warnTime:J

    return-wide v0
.end method

.method public setAttachments(Ljava/util/List;)V
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
    .line 152
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->attachments:Ljava/util/List;

    .line 153
    return-void
.end method

.method public setBodyHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "bodyHtml"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->bodyHtml:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->createTime:J

    .line 161
    return-void
.end method

.method public setCreator(Lcom/alibaba/alimei/restfulapi/v2/data/Creator;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .line 129
    return-void
.end method

.method public setFlagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "flagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->flagList:Ljava/util/List;

    .line 97
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->folderId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIsList(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isList"    # Ljava/lang/Boolean;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->isList:Ljava/lang/Boolean;

    .line 113
    return-void
.end method

.method public setLinkId(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->linkId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->modifiedTime:J

    .line 169
    return-void
.end method

.method public setModifier(Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;)V
    .locals 0
    .param p1, "modifier"    # Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/Modifier;

    .line 138
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
    .line 144
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/NoteResourceItem;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->resources:Ljava/util/List;

    .line 145
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->subject:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->summary:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "tagList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->tagList:Ljava/util/List;

    .line 105
    return-void
.end method

.method public setWarnTime(J)V
    .locals 1
    .param p1, "warnTime"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Note;->warnTime:J

    .line 121
    return-void
.end method
