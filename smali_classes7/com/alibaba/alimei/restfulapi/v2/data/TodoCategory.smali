.class public Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "TodoCategory.java"


# instance fields
.field public createTime:J

.field public creator:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

.field public dataScope:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public modifiedTime:J

.field public modifier:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

.field public name:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->createTime:J

    return-wide v0
.end method

.method public getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    return-object v0
.end method

.method public getDataScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->dataScope:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->modifiedTime:J

    return-wide v0
.end method

.method public getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->createTime:J

    .line 69
    return-void
.end method

.method public setCreator(Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .line 61
    return-void
.end method

.method public setDataScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataScope"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->dataScope:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->modifiedTime:J

    .line 85
    return-void
.end method

.method public setModifier(Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;)V
    .locals 0
    .param p1, "modifier"    # Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->modifier:Lcom/alibaba/alimei/restfulapi/v2/data/TodoMember;

    .line 77
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->name:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/TodoCategory;->spaceId:Ljava/lang/String;

    .line 93
    return-void
.end method
