.class public Lcom/alibaba/alimei/restfulapi/data/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# static fields
.field public static final DEFAULT_SERVER_MBOX_FOLDER_DELETED_ID:Ljava/lang/String; = "6"

.field public static final DEFAULT_SERVER_MBOX_FOLDER_DRAFT_ID:Ljava/lang/String; = "5"

.field public static final DEFAULT_SERVER_MBOX_FOLDER_INBOX_ID:Ljava/lang/String; = "2"

.field public static final DEFAULT_SERVER_MBOX_FOLDER_SENTITEMS_ID:Ljava/lang/String; = "1"

.field public static final DEFAULT_SERVER_MBOX_FOLDER_SPAM_ID:Ljava/lang/String; = "3"


# instance fields
.field public action:I

.field public folderId:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public order:J

.field public ownerEmail:Ljava/lang/String;

.field public parentId:Ljava/lang/String;

.field public pop:Z

.field public type:I

.field public unread:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->action:I

    return v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->order:J

    return-wide v0
.end method

.method public getOwnerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->ownerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    return v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->unread:I

    return v0
.end method

.method public isPop()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->pop:Z

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->action:I

    .line 69
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->level:I

    .line 99
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOrder(J)V
    .locals 1
    .param p1, "order"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->order:J

    .line 115
    return-void
.end method

.method public setOwnerEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerEmail"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->ownerEmail:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPop(Z)V
    .locals 0
    .param p1, "pop"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->pop:Z

    .line 122
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    .line 93
    return-void
.end method

.method public setUnread(I)V
    .locals 0
    .param p1, "unread"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->unread:I

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Folder [action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , unread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->unread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->pop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownerEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/Folder;->ownerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
