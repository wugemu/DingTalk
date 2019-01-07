.class public Lcom/alibaba/alimei/restfulapi/v2/data/Todo;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "Todo.java"


# instance fields
.field public assignee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;",
            ">;"
        }
    .end annotation
.end field

.field public assigner:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

.field public attachments:Ljava/lang/String;

.field public categoryId:Ljava/lang/String;

.field public createTime:J

.field public creator:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

.field public dataScope:Ljava/lang/String;

.field public deadline:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public linkId:Ljava/lang/String;

.field public localStatus:I

.field public modifiedTime:J

.field public modifier:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

.field public spaceId:Ljava/lang/String;

.field public status:I

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public getAssignee()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->assignee:Ljava/util/List;

    return-object v0
.end method

.method public getAssigner()Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->assigner:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    return-object v0
.end method

.method public getAttachments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->attachments:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->createTime:J

    return-wide v0
.end method

.method public getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    return-object v0
.end method

.method public getDataScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->dataScope:Ljava/lang/String;

    return-object v0
.end method

.method public getDeadline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->deadline:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalStatus()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->localStatus:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->modifiedTime:J

    return-wide v0
.end method

.method public getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->status:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setAssignee(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "assignee":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->assignee:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setAssigner(Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;)V
    .locals 0
    .param p1, "assigner"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->assigner:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .line 116
    return-void
.end method

.method public setAttachments(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachments"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->attachments:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->categoryId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->createTime:J

    .line 156
    return-void
.end method

.method public setCreator(Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .line 148
    return-void
.end method

.method public setDataScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataScope"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->dataScope:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setDeadline(Ljava/lang/String;)V
    .locals 0
    .param p1, "deadline"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->deadline:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->id:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLinkId(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->linkId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setLocalStatus(I)V
    .locals 0
    .param p1, "localStatus"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->localStatus:I

    .line 180
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->modifiedTime:J

    .line 172
    return-void
.end method

.method public setModifier(Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;)V
    .locals 0
    .param p1, "modifier"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .line 164
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->spaceId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->status:I

    .line 140
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Todo;->subject:Ljava/lang/String;

    .line 100
    return-void
.end method
