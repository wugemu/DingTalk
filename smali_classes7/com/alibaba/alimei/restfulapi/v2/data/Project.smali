.class public Lcom/alibaba/alimei/restfulapi/v2/data/Project;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "Project.java"


# instance fields
.field private createTime:J

.field private creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

.field private deleted:Z

.field private description:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private join:Z

.field private modifiedTime:J

.field private name:Ljava/lang/String;

.field private star:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->createTime:J

    return-wide v0
.end method

.method public getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->modifiedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->deleted:Z

    return v0
.end method

.method public isJoin()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->join:Z

    return v0
.end method

.method public isStar()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->star:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->createTime:J

    .line 88
    return-void
.end method

.method public setCreator(Lcom/alibaba/alimei/restfulapi/v2/data/Creator;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->creator:Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    .line 111
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->deleted:Z

    .line 119
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->description:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->email:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setJoin(Z)V
    .locals 0
    .param p1, "join"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->join:Z

    .line 127
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->modifiedTime:J

    .line 96
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setStar(Z)V
    .locals 0
    .param p1, "star"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/Project;->star:Z

    .line 80
    return-void
.end method
